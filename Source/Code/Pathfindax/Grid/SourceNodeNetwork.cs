using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Grid
{
	public class SourceNodeNetwork : ISourceNodeNetwork<SourceNode>
	{
		public DefinitionNode this[int index] => DefinitionNodes[index];
		public List<DefinitionNode> DefinitionNodes { get; } = new List<DefinitionNode>();
		public int NodeCount => DefinitionNodes.Count;
		public Vector2 Offset { get; protected set; }
		private readonly Dictionary<PathfindaxCollisionCategory, SourceNode[]> _nodeNetworks = new Dictionary<PathfindaxCollisionCategory, SourceNode[]>();

		public SourceNodeNetwork(Vector2 offset)
		{
			Offset = offset;
		}

		public DefinitionNode AddNode(Vector2 position, byte movementPenalty = 0)
		{
			var definitionNode = new DefinitionNode(DefinitionNodes.Count, position, movementPenalty);
			DefinitionNodes.Add(definitionNode);
			return definitionNode;
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <returns></returns>
		public DefinitionNode GetNode(float worldX, float worldY)
		{			
			return DefinitionNodes.OrderBy(x => MathF.Distance(x.Position.X, x.Position.Y, worldX, worldY)).FirstOrDefault(); //TODO this does not scale well with more nodes in the network.
		}

		public SourceNode[] GetSourceNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			if (!_nodeNetworks.TryGetValue(collisionCategory, out var sourceNodeGrid))
			{
				sourceNodeGrid = GenerateSourceNodeGrid(collisionCategory);
				_nodeNetworks.Add(collisionCategory, sourceNodeGrid);
			}
			return sourceNodeGrid;
		}

		public PathRequest CreatePathRequest(IPathfinder pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer, byte agentSize)
		{
			var startNode = GetNode(x1, y1);
			var endNode = GetNode(x2, y2);
			return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
		}

		public ICompletedPath CreateCompletedPath(PathRequest pathRequest, List<DefinitionNode> path)
		{
			return new CompletedPath(path.ToArray());
		}

		private SourceNode[] GenerateSourceNodeGrid(PathfindaxCollisionCategory collisionCategory)
		{
			var sourceNodeGrid = GenerateNodes();
			GenerateConnections(sourceNodeGrid, collisionCategory);
			GenerateClearances(sourceNodeGrid, collisionCategory);
			return sourceNodeGrid;
		}

		private SourceNode[] GenerateNodes()
		{
			var sourceNodeGrid = new SourceNode[DefinitionNodes.Count];
			for (var i = 0; i < DefinitionNodes.Count; i++)
			{
				sourceNodeGrid[i] = new SourceNode(DefinitionNodes[i]);
			}
			return sourceNodeGrid;
		}

		private void GenerateConnections(SourceNode[] sourceNodeGrid, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < DefinitionNodes.Count; i++)
			{
				var definitionNode = DefinitionNodes[i];
				var nodeConnections = new List<NodePointer>();
				foreach (var nodeDefinitionConnection in definitionNode.Connections)
				{
					if ((nodeDefinitionConnection.CollisionCategory & collisionCategory) == 0)
					{
						nodeConnections.Add(nodeDefinitionConnection.To);
					}
				}
				sourceNodeGrid[i].Connections = nodeConnections.ToArray(); ;
			}
		}

		private void GenerateClearances(SourceNode[] sourceNodeGrid, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < sourceNodeGrid.Length; i++)
			{
				var clearance = int.MaxValue; //CalculateGridNodeClearances(i, collisionCategory, 5);
				sourceNodeGrid[i].Clearance = clearance;
			}
		}
	}
}
