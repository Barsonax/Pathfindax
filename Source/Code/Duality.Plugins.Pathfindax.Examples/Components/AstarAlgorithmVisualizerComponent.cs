using System.Diagnostics;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components.Extensions;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Utils;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class AstarAlgorithmVisualizerComponent : Component, ICmpRenderer, ICmpInitializable
	{
		/// <summary>
		/// A reference to the <see cref="Duality.Components.Camera"/> thats used to convert the screen coordinates from mouseclicks to world coordinates.
		/// </summary>
		public Camera Camera { get; set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		[DontSerialize]
		private IDefinitionNodeNetwork _definitionNodeNetwork;
		[DontSerialize]
		private Stopwatch _stopwatch;
		[DontSerialize]
		private AstarAlgorithmVisualizer _astarAlgorithmVisualizer;

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_definitionNodeNetwork = GameObj.GetDefinitionNodeNetwork<IDefinitionNodeNetwork>();
				_astarAlgorithmVisualizer = new AstarAlgorithmVisualizer(_definitionNodeNetwork);
				_stopwatch = Stopwatch.StartNew();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var position = Camera.GetSpaceCoord(e.Position);
			var clickedNodeIndex = _definitionNodeNetwork.GetNodeIndex(position.X, position.Y);
			if (_astarAlgorithmVisualizer.EndIndex == -1)
			{
				_astarAlgorithmVisualizer.EndIndex = clickedNodeIndex;
				_astarAlgorithmVisualizer.Start(0f, PathfindaxCollisionCategory.All);
			}
			else
			{
				_astarAlgorithmVisualizer.StartIndex = clickedNodeIndex;
				_astarAlgorithmVisualizer.EndIndex = -1;
				_astarAlgorithmVisualizer.Stop();
			}
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (_stopwatch.ElapsedMilliseconds > 1)
			{
				_astarAlgorithmVisualizer.Step();
				_stopwatch.Restart();
			}
			_astarAlgorithmVisualizer.Draw(new DualityRenderer(device, -5));
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}