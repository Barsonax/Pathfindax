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
        private GridPathfinderProxy _gridPathfinderProxy;
        private NonGridPathfinderProxy _nonGridPathfinderProxy;
        public byte AgentSize { get; set; }
        public PathfindaxCollisionCategory CollisionCategory { get; set; }
        public Vector2[] Path { get; private set; }
        public bool OnGrid { get; set; }

        [EditorHintFlags(MemberFlags.Invisible)]
        public float BoundRadius { get; }

        public Camera Camera { get; set; }

        private void PathSolved(PathRequest pathRequest)
        {
            Path = pathRequest.CompletedPath.Path.Select(p => p.ToVector2()).ToArray();
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

        public void OnInit(InitContext context)
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

        private Vector3? _pathStart;
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

        public void OnShutdown(ShutdownContext context)
        {
            DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
            DualityApp.Mouse.Move -= Mouse_Move;
        }
    }
}
