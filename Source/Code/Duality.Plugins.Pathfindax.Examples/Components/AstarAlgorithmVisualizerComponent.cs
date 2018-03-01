using System.Diagnostics;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
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
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		[DontSerialize]
		private bool _startPathfinding;
		[DontSerialize]
		private Stopwatch _stopwatch;
		[DontSerialize]
		private AstarAlgorithmVisualizer _astarAlgorithmVisualizer;
		[DontSerialize]
		private DualityNodeNetworkVisualizer _dualityNodeNetworkVisualizer;

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
				var definitionNodeGrid = GetDefinitionNodeNetwork<DefinitionNodeGrid>();

				var astarNodeNetwork = new AstarNodeNetwork(definitionNodeGrid, new BrushfireClearanceGenerator(definitionNodeGrid, 1));
				_astarAlgorithmVisualizer = new AstarAlgorithmVisualizer(definitionNodeGrid, astarNodeNetwork);


				var startNodeIndex = 0;
				var targetNodeIndex = definitionNodeGrid.NodeGrid.ToIndex(definitionNodeGrid.NodeGrid.Width - 1, definitionNodeGrid.NodeGrid.Height - 1);
				_astarAlgorithmVisualizer.Start(startNodeIndex, targetNodeIndex, 1f, PathfindaxCollisionCategory.All);

				_stopwatch = Stopwatch.StartNew();
				DualityApp.Keyboard.KeyDown += Keyboard_KeyDown;
			}
		}

		private void Keyboard_KeyDown(object sender, KeyboardKeyEventArgs e)
		{
			if (e.Key == Key.Space)
			{
				_startPathfinding = true;
			}
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (!_startPathfinding) return;
			if (_stopwatch.ElapsedMilliseconds > 3)
			{
				_astarAlgorithmVisualizer.Step();
				_stopwatch.Restart();
			}

			_dualityNodeNetworkVisualizer.Draw(device, _astarAlgorithmVisualizer.NodeNetworkDrawingState);
		}

		private TDefinitionNodeNetwork GetDefinitionNodeNetwork<TDefinitionNodeNetwork>()
			where TDefinitionNodeNetwork : class, IDefinitionNodeNetwork
		{
			var definitionNodeNetworkProvider = GameObj.GetComponent<IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>>();
			if (definitionNodeNetworkProvider == null)
			{
				Log.Game.WriteError($"{GetType()}: Could not find a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)}.");
				return null;
			}
			var definitionNodeNetwork = definitionNodeNetworkProvider.GenerateGrid2D();
			if (definitionNodeNetwork == null)
			{
				Log.Game.WriteError($"{GetType()}: Found a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)} but it could not generate a nodenetwork.");
				return null;
			}
			return definitionNodeNetwork;
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}
