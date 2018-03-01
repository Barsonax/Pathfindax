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
using Pathfindax.Visualization.Algorithms;

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
		[DontSerialize]
		private DualityNodeNetworkVisualizer _dualityNodeNetworkVisualizer;
		[DontSerialize]
		private int _pathStart = -1;
		[DontSerialize]
		private int _pathEnd;

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
				_dualityNodeNetworkVisualizer = new DualityNodeNetworkVisualizer();
				_definitionNodeNetwork = GameObj.GetDefinitionNodeNetwork<IDefinitionNodeNetwork>();

				var astarNodeNetwork = new AstarNodeNetwork(_definitionNodeNetwork);
				_astarAlgorithmVisualizer = new AstarAlgorithmVisualizer(_definitionNodeNetwork, astarNodeNetwork);

				_stopwatch = Stopwatch.StartNew();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var position = Camera.GetSpaceCoord(e.Position);
			var clickedNodeIndex = _definitionNodeNetwork.GetNodeIndex(position.X, position.Y);
			if (_pathEnd == -1)
			{
				_pathEnd = clickedNodeIndex;
				_astarAlgorithmVisualizer.Start(_pathStart, _pathEnd, 0f, PathfindaxCollisionCategory.All);
			}
			else
			{
				_pathStart = clickedNodeIndex;
				_pathEnd = -1;
				_astarAlgorithmVisualizer.Stop();
			}
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (_stopwatch.ElapsedMilliseconds > 1)
			{
				_astarAlgorithmVisualizer.Step();
				if (_pathStart != -1) _astarAlgorithmVisualizer.NodeNetworkDrawingState.SetNodeState(_pathStart, ColorRgba.Green);
				if (_pathEnd != -1) _astarAlgorithmVisualizer.NodeNetworkDrawingState.SetNodeState(_pathEnd, ColorRgba.Red);
				_stopwatch.Restart();
			}
			_dualityNodeNetworkVisualizer.Draw(device, _astarAlgorithmVisualizer.NodeNetworkDrawingState);
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}