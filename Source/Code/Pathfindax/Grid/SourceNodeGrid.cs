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
				var nodeConnections = new List<NodeConnection>(1 + i * 16); //Since we know the amount of connections that will likely be in this list we can specify the size beforehand for some extra performance.
				foreach (var gridNode in GetNodesInArea(fromGridCoordinates.X, fromGridCoordinates.Y + i, i + 1, 1))
				{
					nodeConnections.AddRange(gridNode.Connections);
				}

				foreach (var gridNode in GetNodesInArea(fromGridCoordinates.X + i, fromGridCoordinates.Y, 1, i))
				{
					nodeConnections.AddRange(gridNode.Connections);
				}
				foreach (var nodeConnection in nodeConnections)
				{
					if ((nodeConnection.CollisionCategory & collisionCategory) != 0) return i;
				}
			}
			return maxClearance;
		}

		private List<DefinitionNode> GetNodesInArea(int gridX, int gridY, int width, int height)
		{
			var nodes = new List<DefinitionNode>();
			for (var y = gridY; y < gridY + height; y++)
			{
				for (var x = gridX; x < gridX + width; x++)
				{
					if (x < DefinitionNodeArray.Width && y < DefinitionNodeArray.Height)
						nodes.Add(DefinitionNodeArray[x, y]);
				}
			}
			return nodes;
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

