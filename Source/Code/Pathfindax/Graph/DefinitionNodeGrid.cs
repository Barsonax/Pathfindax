using System;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	/// <summary>
	/// Class that holds the definition data for the nodegrid.
	/// The nodegrid will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeGrid : IDefinitionNodeGrid
	{
		public Array2D<DefinitionNode> NodeGrid { get; }
		public DefinitionNode[] NodeArray => NodeGrid.Array;
		IReadOnlyArray2D<DefinitionNode> IDefinitionNodeGrid.DefinitionNodeArray => NodeGrid;
		Transformer IDefinitionNodeNetwork.Transformer => Transformer;
		public GridTransformer Transformer { get; }
		public int NodeCount => NodeGrid.Count;

		public DefinitionNodeGrid(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, Vector2 scale, Vector2 offset = default)
		{
			Transformer = new GridTransformer(new Point2(width, height), scale, offset);
			var factory = new DefinitionNodeGridFactory();
			NodeGrid = factory.GeneratePreFilledArray(generateNodeGridConnections, width, height);
		}

		public DefinitionNodeGrid(Array2D<DefinitionNode> nodeGrid, Vector2 scale, Vector2 offset = default)
		{
			Transformer = new GridTransformer(new Point2(nodeGrid.Width, NodeGrid.Height), scale, offset);
			NodeGrid = nodeGrid;
		}

		public void SetNodeCollision(int gridX, int gridY, PathfindaxCollisionCategory pathfindaxCollisionCategory)
		{
			var nodeToBlockIndex = NodeGrid.ToIndex(gridX, gridY);
			for (var y = -1; y < 2; y++)
			{
				var nodeY = gridY + y;
				if (nodeY < 0 || nodeY >= NodeGrid.Height) continue;
				for (var x = -1; x < 2; x++)
				{
					var nodeX = gridX + x;
					if (nodeX < 0 || nodeX >= NodeGrid.Width) continue;
					var connections = NodeGrid[nodeX, nodeY].Connections;
					for (var i = 0; i < connections.Length; i++)
					{
						ref var nodeConnection = ref connections[i];
						if (nodeConnection.To == nodeToBlockIndex) nodeConnection.CollisionCategory = pathfindaxCollisionCategory;
					}
				}
			}
		}

		public ref DefinitionNode GetNode(float worldX, float worldY)
		{
			var index = GetNodeIndex(worldX, worldY);
			return ref NodeArray[index];
		}

		public int GetNodeIndex(float worldX, float worldY)
		{
			return NodeGrid.ToIndex(Transformer.ToGrid(worldX, worldY));
		}
	}
}