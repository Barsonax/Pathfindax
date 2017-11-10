using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class PotentialFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
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
					var potentialField = FindPath(dijkstraNodeNetwork, pathfindingNetwork, targetNode);
					if (true) //flowField.CanRetracePath(startNode, pathRequest.AgentSize)
					{
						sw.Stop();
						Debug.WriteLine($"Potentialfield created in {sw.ElapsedMilliseconds} ms.");
						return potentialField;
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

		private PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode)
		{
			var potentialNodes = new Array2D<float>(dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			for (var i = 0; i < potentialNodes.Length; i++)
			{
				var dijkstraNode = pathfindingNetwork[i];
				if (dijkstraNode == targetNode) potentialNodes[i] = 0f;
				else if(dijkstraNode.GCost < 0.001f) potentialNodes[i] = DijkstraAlgorithm.ClearanceBlockedCost;
				else potentialNodes[i] = pathfindingNetwork[i].GCost;
			}
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid, targetNode, potentialNodes);
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return _dijkstraAlgorithm.CreatePathRequest(pathfinder, x1, y1, x2, y2, collisionLayer);
		}
	}
}
