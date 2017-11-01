using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds nodegrid data which wont change and is safe to share between threads
	/// </summary>
	public class SourceNodeGrid : ISourceNodeGrid<SourceNode>
	{
		public DefinitionNode this[int index] => DefinitionNodeArray[index];
		public Array2D<DefinitionNode> DefinitionNodeArray { get; }
		public Vector2 WorldSize { get; protected set; }
		public Vector2 NodeSize { get; protected set; }
		public int NodeCount => DefinitionNodeArray.Length;
		public Vector2 Offset { get; protected set; }
		private readonly Dictionary<PathfindaxCollisionCategory, SourceNode[]> _nodeNetworks = new Dictionary<PathfindaxCollisionCategory, SourceNode[]>();
		public SourceNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			DefinitionNodeArray = grid;
			WorldSize = new Vector2(DefinitionNodeArray.Width * nodeSize.X - nodeSize.X, DefinitionNodeArray.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			Offset = offset;
		}

		public SourceNode[] GetSourceNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			if (!_nodeNetworks.TryGetValue(collisionCategory, out var sourceNodeGrid))
			{
				var watch = Stopwatch.StartNew();
				sourceNodeGrid = GenerateSourceNodeGrid(collisionCategory);
				Debug.WriteLine($"Generated source nodenetwork in {watch.ElapsedMilliseconds} ms");
				_nodeNetworks.Add(collisionCategory, sourceNodeGrid);
			}
			return sourceNodeGrid;
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
			var sourceNodeGrid = new SourceNode[DefinitionNodeArray.Length];
			for (var i = 0; i < DefinitionNodeArray.Length; i++)
			{
				sourceNodeGrid[i] = new SourceNode(DefinitionNodeArray[i]);
			}
			return sourceNodeGrid;
		}

		private void GenerateConnections(SourceNode[] sourceNodeGrid, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < DefinitionNodeArray.Length; i++)
			{
				var definitionNode = DefinitionNodeArray[i];

				var count = 0;
				foreach (var nodeDefinitionConnection in definitionNode.Connections)
				{
					if ((nodeDefinitionConnection.CollisionCategory & collisionCategory) == 0)
					{
						count++;
					}
				}

				var j = 0;
				var nodeConnections = new NodePointer[count];
				foreach (var nodeDefinitionConnection in definitionNode.Connections)
				{
					if ((nodeDefinitionConnection.CollisionCategory & collisionCategory) == 0)
					{
						nodeConnections[j] = nodeDefinitionConnection.To;
						j++;
					}
				}
				sourceNodeGrid[i].Connections = nodeConnections;
			}
		}

		private void GenerateClearances(SourceNode[] sourceNodeGrid, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < sourceNodeGrid.Length; i++)
			{
				var clearance = CalculateGridNodeClearances(i, collisionCategory, 5);
				sourceNodeGrid[i].Clearance = clearance;
			}
		}

		/// <summary>
		/// Calculates the clearances up to a maximum <paramref name="maxClearance"/>
		/// </summary>
		/// <param name="index"></param>
		/// <param name="collisionCategory"></param>
		/// <param name="maxClearance"></param>
		/// <returns></returns>
		private int CalculateGridNodeClearances(int index, PathfindaxCollisionCategory collisionCategory, int maxClearance)
		{
			var fromGridCoordinates = DefinitionNodeArray.GetCoordinates(index);
			for (var i = 0; i < maxClearance; i++)
			{
				foreach (var definitionNode in GetNodesInArea(fromGridCoordinates.X, fromGridCoordinates.Y + i, i + 1, 1))
				{
					foreach (var nodeConnection in definitionNode.Connections)
					{
						if ((nodeConnection.CollisionCategory & collisionCategory) != 0) return i;
					}
				}

				foreach (var definitionNode in GetNodesInArea(fromGridCoordinates.X + i, fromGridCoordinates.Y, 1, i))
				{
					foreach (var nodeConnection in definitionNode.Connections)
					{
						if ((nodeConnection.CollisionCategory & collisionCategory) != 0) return i;
					}
				}
			}
			return maxClearance;
		}

		private IEnumerable<DefinitionNode> GetNodesInArea(int gridX, int gridY, int width, int height)
		{
			if (gridX >= DefinitionNodeArray.Width || gridY >= DefinitionNodeArray.Height) return new DefinitionNode[0];
			var gridX2 = MathF.Clamp(gridX + width, 0, DefinitionNodeArray.Width - 1);
			var gridY2 = MathF.Clamp(gridY + height, 0, DefinitionNodeArray.Height - 1);
			var definitionNodes = new DefinitionNode[(gridX2 - gridX) * (gridY2 - gridY)];
			var i = 0;
			for (var y = gridY; y < gridY2; y++)
			{
				for (var x = gridX; x < gridX2; x++)
				{
					definitionNodes[i] = DefinitionNodeArray[x, y];
					i++;
				}
			}
			return definitionNodes;
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{
			var percentX = (worldX - Offset.X) / WorldSize.X;
			var percentY = (worldY - Offset.Y) / WorldSize.Y;
			percentX = Mathf.Clamp(percentX, 0, 1);
			percentY = Mathf.Clamp(percentY, 0, 1);

			var x = (int)Math.Round((DefinitionNodeArray.Width - 1) * percentX);
			var y = (int)Math.Round((DefinitionNodeArray.Height - 1) * percentY);

			return DefinitionNodeArray[x, y];
		}
	}
}

