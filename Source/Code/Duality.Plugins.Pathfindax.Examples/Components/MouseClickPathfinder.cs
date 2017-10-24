using System.Linq;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Extensions;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
    public class MouseClickPathfinder : Component, ICmpRenderer, ICmpInitializable
    {
		/// <summary>
		/// The size of the agent in nodes. Bigger agents won't fit in nodes whose clearance is smaller than this.
		/// </summary>
        public byte AgentSize { get; set; }

		/// <summary>
		/// What collision categories will the agent collide with? These categories will be avoided when calculating a path.
		/// </summary>
        public PathfindaxCollisionCategory CollisionCategory { get; set; }

		/// <summary>
		/// The currently calculated path
		/// </summary>
        public Vector2[] Path { get; private set; }

        public bool OnGrid { get; set; }

		/// <summary>
		/// A reference to the <see cref="Duality.Components.Camera"/> thats used to convert the screen coordinates from mouseclicks to world coordinates.
		/// </summary>
	    public Camera Camera { get; set; }

		/// <summary>
		/// Only needed in order to implement <see cref="ICmpRenderer"/>
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
        public float BoundRadius { get; }

	    private Vector3? _pathStart;
	    private GridPathfinderProxy _gridPathfinderProxy;
	    private NonGridPathfinderProxy _nonGridPathfinderProxy;

	    void ICmpInitializable.OnInit(InitContext context)
	    {
		    if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
		    {
			    DualityApp.Mouse.Move += Mouse_Move;
			    DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			    if (OnGrid)
			    {
				    _gridPathfinderProxy = new GridPathfinderProxy();
			    }
			    else
			    {
				    _nonGridPathfinderProxy = new NonGridPathfinderProxy();
			    }
		    }
	    }

		void ICmpInitializable.OnShutdown(ShutdownContext context)
	    {
		    DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		    DualityApp.Mouse.Move -= Mouse_Move;
	    }

		private void PathSolved(PathRequest pathRequest)
        {
            Path = pathRequest.CompletedPath.Path.Select(p => p.ToVector2()).ToArray();
        }

        private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (_pathStart == null)
            {
                _pathStart = Camera.GetSpaceCoord(e.Position);
            }
            else
            {
                Path = null;
                _pathStart = null;
            }
        }

        private void Mouse_Move(object sender, MouseMoveEventArgs e)
        {
            if (_pathStart != null)
            {                
                if (OnGrid) //Implementation for nodegrid pathfinding
                {
                    var request = _gridPathfinderProxy.RequestPath(_pathStart.Value, _pathStart.Value, AgentSize, CollisionCategory);
                    request.AddCallback(PathSolved);
                }
                else //Implementation for non grid pathfinding
                {
                    var mouseWorldPosition = Camera.GetSpaceCoord(e.Position);
                    var request = _nonGridPathfinderProxy.RequestPath(_pathStart.Value, mouseWorldPosition, AgentSize, CollisionCategory);
                    request.AddCallback(PathSolved);
                }
            }
        }

	    bool ICmpRenderer.IsVisible(IDrawDevice device)
	    {
		    return
			    (device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
			    (device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
	    }

	    void ICmpRenderer.Draw(IDrawDevice device)
	    {
		    if (Path != null)
		    {
			    var canvas = new Canvas(device);
			    canvas.State.ZOffset = -10;

			    for (var index = 0; index < Path.Length; index++)
			    {
				    if (index == 0) canvas.State.ColorTint = ColorRgba.Green;
				    else if (index == Path.Length - 1) canvas.State.ColorTint = ColorRgba.Blue;
				    else canvas.State.ColorTint = ColorRgba.Red;
				    var position = Path[index];
				    canvas.FillCircle(position.X, position.Y, 10f);
			    }

			    canvas.State.ColorTint = ColorRgba.Red;
			    for (var i = 1; i < Path.Length; i++)
			    {
				    var from = Path[i - 1];
				    var to = Path[i];
				    canvas.DrawLine(from.X, from.Y, 0, to.X, to.Y, 0);
			    }
		    }
	    }
	}
}
