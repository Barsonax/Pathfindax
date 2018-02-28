using System.Diagnostics;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class AstarAlgorithmVisualizerComponent : Component, ICmpRenderer, ICmpInitializable
	{
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		[DontSerialize]
		private AStarAlgorithm _aStarAlgorithm;
		[DontSerialize]
		private AstarNode[] _astarNodeNetwork;
		[DontSerialize]
		private DefinitionNodeGrid _definitionNodeGrid;
		[DontSerialize]
		private int _startNodeIndex;
		[DontSerialize]
		private int _targetNodeIndex;
		[DontSerialize]
		private bool _startPathfinding;
		[DontSerialize]
		private Stopwatch _stopwatch;
		[DontSerialize]
		private PathRetracer<AstarNode> _pathRetracer;
		[DontSerialize]
		private int[] _path;

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
				_definitionNodeGrid = GetDefinitionNodeNetwork<DefinitionNodeGrid>();
				var astarNodeNetwork = new AstarNodeNetwork(_definitionNodeGrid, new BrushfireClearanceGenerator(_definitionNodeGrid, 1));
				_astarNodeNetwork = astarNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory.All);
				_aStarAlgorithm = new AStarAlgorithm(_astarNodeNetwork.Length, new EuclideanDistance());
				_startNodeIndex = 0;
				_targetNodeIndex = _definitionNodeGrid.NodeGrid.ToIndex(_definitionNodeGrid.NodeGrid.Width - 1, _definitionNodeGrid.NodeGrid.Height - 1);
				_aStarAlgorithm.StartFindPath(_astarNodeNetwork, _definitionNodeGrid.NodeArray, _startNodeIndex, _targetNodeIndex, 1f, PathfindaxCollisionCategory.All);
				_stopwatch = Stopwatch.StartNew();
				_pathRetracer = new PathRetracer<AstarNode>((nodes, definitionNodes, i) => nodes[i].Parent);
				DualityApp.Keyboard.KeyDown += Keyboard_KeyDown;
			}
		}

		private void Keyboard_KeyDown(object sender, Input.KeyboardKeyEventArgs e)
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
			if (_path == null && _stopwatch.ElapsedMilliseconds > 3)
			{
				if (_aStarAlgorithm.FindPathStep(1))
				{
					_path = _pathRetracer.RetracePath(_astarNodeNetwork, _definitionNodeGrid.NodeArray, _startNodeIndex, _targetNodeIndex);
				}
				_stopwatch.Restart();
			}

			var definitionNodeVisualizer = new DefinitionNodeVisualizer();
			definitionNodeVisualizer.Draw(device, ColorRgba.Red.WithAlpha(0.5f), _definitionNodeGrid, _aStarAlgorithm.OpenSet);
			definitionNodeVisualizer.Draw(device, ColorRgba.Green.WithAlpha(0.5f), _definitionNodeGrid, _aStarAlgorithm.ClosedSet);

			if (_path != null)
			{
				definitionNodeVisualizer.Draw(device, ColorRgba.Blue, _definitionNodeGrid, _path);
			}
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
