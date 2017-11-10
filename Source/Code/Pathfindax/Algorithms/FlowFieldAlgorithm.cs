using System;
using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
	{
		private readonly DijkstraAlgorithm _dijkstraAlgorithm = new DijkstraAlgorithm();
		public IPath FindPath(DijkstraNodeGrid dijkstraNodeNetwork, PathRequest pathRequest)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();
				var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
				var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
				var targetNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
				var pathSucces = _dijkstraAlgorithm.FindPath(pathfindingNetwork, targetNode, startNode, pathRequest);
				if (pathSucces)
				{
					var flowField = FindPath(dijkstraNodeNetwork, pathfindingNetwork, targetNode, pathRequest);
					if (flowField.CanRetracePath(startNode, pathRequest.AgentSize))
					{
						sw.Stop();
						Debug.WriteLine($"Flowfield created in {sw.ElapsedMilliseconds} ms.");
						return flowField;
					}
				}
				Debug.WriteLine("Did not find a path :(");
				return null;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				Debugger.Break();
				return null;
			}
		}

		private FlowField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, PathRequest pathRequest)
		{
			var flowNodes = new NodePointer[dijkstraNodeNetwork.DefinitionNodeGrid.NodeCount];
			for (var i = 0; i < flowNodes.Length; i++)
			{
				var from = pathfindingNetwork[i];
				if (from == targetNode) flowNodes[i] = from.DefinitionNode.Index;
				else if (from.Parent.Index != -1)
				{
					var to = NodePointer.Dereference(from.Parent, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array);
					flowNodes[i] = to.Index;
				}
				else
				{
					flowNodes[i] = NodePointer.NullPointer;
				}
			}
			return new FlowField(dijkstraNodeNetwork.DefinitionNodeGrid, pathfindingNetwork, targetNode, flowNodes);
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return _dijkstraAlgorithm.CreatePathRequest(pathfinder, x1, y1, x2, y2, collisionLayer);
		}
	}
}
