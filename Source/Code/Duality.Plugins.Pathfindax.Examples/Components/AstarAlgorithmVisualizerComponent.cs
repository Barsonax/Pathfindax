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
		private AstarAlgorithmVisualization _astarAlgorithmVisualization;

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
				_astarAlgorithmVisualization = new AstarAlgorithmVisualization(_definitionNodeNetwork);
				_stopwatch = Stopwatch.StartNew();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var position = Camera.GetSpaceCoord(e.Position);
			var clickedNodeIndex = _definitionNodeNetwork.GetNodeIndex(position.X, position.Y);
			if (_astarAlgorithmVisualization.EndIndex == -1)
			{
				_astarAlgorithmVisualization.EndIndex = clickedNodeIndex;
				_astarAlgorithmVisualization.Start(0f, PathfindaxCollisionCategory.All);
			}
			else
			{
				_astarAlgorithmVisualization.StartIndex = clickedNodeIndex;
				_astarAlgorithmVisualization.EndIndex = -1;
				_astarAlgorithmVisualization.Stop();
			}
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (_stopwatch.ElapsedMilliseconds > 1)
			{
				_astarAlgorithmVisualization.Step();
				_stopwatch.Restart();
			}
			_astarAlgorithmVisualization.Draw(new DualityRenderer(device, -5));
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}