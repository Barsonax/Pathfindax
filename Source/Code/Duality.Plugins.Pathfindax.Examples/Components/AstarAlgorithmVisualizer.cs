using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class AstarAlgorithmVisualizer : Component, ICmpRenderer, ICmpInitializable
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
		private int startNodeIndex;
		[DontSerialize]
		private int targetNodeIndex;

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
				var astarNodeNetwork =
					new AstarNodeNetwork(_definitionNodeGrid, new BrushfireClearanceGenerator(_definitionNodeGrid, 1));
				_astarNodeNetwork = astarNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory.All);
				_aStarAlgorithm = new AStarAlgorithm(_astarNodeNetwork.Length, new EuclideanDistance());
				startNodeIndex = 0;
				targetNodeIndex = _definitionNodeGrid.NodeGrid.ToIndex(_definitionNodeGrid.NodeGrid.Width - 1,
					_definitionNodeGrid.NodeGrid.Height - 1);
				_aStarAlgorithm.StartFindPath(_astarNodeNetwork, _definitionNodeGrid.NodeArray, startNodeIndex, targetNodeIndex, 1f,
					PathfindaxCollisionCategory.All);
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

		private bool _startPathfinding;

		[DontSerialize]
		private Stopwatch _stopwatch;

		private PathRetracer<AstarNode> _pathRetracer;
		private NodePath Path;

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if(!_startPathfinding) return;
			if (Path == null && _stopwatch.ElapsedMilliseconds > 3)
			{
				if (_aStarAlgorithm.FindPathStep(1))
				{
					var path = _pathRetracer.RetracePath(_astarNodeNetwork, _definitionNodeGrid.NodeArray, startNodeIndex,targetNodeIndex);
					Path = new NodePath(_definitionNodeGrid.NodeArray, path, _definitionNodeGrid.Transformer);
				}
				_stopwatch.Restart();
			}

			var canvas = new Canvas(device) { State = { ZOffset = -8 } };
			canvas.State.ColorTint = ColorRgba.Red.WithAlpha(0.5f);
			foreach (var i in _aStarAlgorithm.OpenSet)
			{
				var definitionNode = _definitionNodeGrid.NodeArray[i];
				var nodeWorldPosition = _definitionNodeGrid.Transformer.ToWorld(definitionNode.Position) - _definitionNodeGrid.Transformer.Scale * 0.5f;
				canvas.FillRect(nodeWorldPosition.X, nodeWorldPosition.Y, _definitionNodeGrid.Transformer.Scale.X, _definitionNodeGrid.Transformer.Scale.Y);
			}

			canvas.State.ColorTint = ColorRgba.Green.WithAlpha(0.5f);
			foreach (var i in _aStarAlgorithm.ClosedSet)
			{
				var definitionNode = _definitionNodeGrid.NodeArray[i];
				var nodeWorldPosition = _definitionNodeGrid.Transformer.ToWorld(definitionNode.Position) - _definitionNodeGrid.Transformer.Scale * 0.5f;
				canvas.FillRect(nodeWorldPosition.X, nodeWorldPosition.Y, _definitionNodeGrid.Transformer.Scale.X, _definitionNodeGrid.Transformer.Scale.Y);
			}

			if (Path?.Path != null)
			{
				canvas.State.ColorTint = ColorRgba.Blue;
				for (var index = 0; index < Path.Path.Length; index++)
				{
					var definitionNode = _definitionNodeGrid.NodeArray[Path.Path[index]];
					var nodeWorldPosition = _definitionNodeGrid.Transformer.ToWorld(definitionNode.Position) - _definitionNodeGrid.Transformer.Scale * 0.5f;
					canvas.FillRect(nodeWorldPosition.X, nodeWorldPosition.Y, _definitionNodeGrid.Transformer.Scale.X, _definitionNodeGrid.Transformer.Scale.Y);
				}
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
