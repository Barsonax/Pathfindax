﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
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
		private readonly int _maxClearance;

		public SourceNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset, int maxClearance)
		{
			DefinitionNodeArray = grid;
			WorldSize = new Vector2(DefinitionNodeArray.Width * nodeSize.X - nodeSize.X, DefinitionNodeArray.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			Offset = offset;
			_maxClearance = maxClearance;
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

		private void GenerateClearances(SourceNode[] sourceNodeGrid, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < sourceNodeGrid.Length; i++)
			{
				var clearance = CalculateGridNodeClearances(i, collisionCategory, _maxClearance);
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
		private float CalculateGridNodeClearances(int index, PathfindaxCollisionCategory collisionCategory, int maxClearance)
		{
			var fromCoordinates = DefinitionNodeArray.GetCoordinates(index);
			for (var checkClearance = 0; checkClearance < maxClearance; checkClearance++)
			{
				var nextClearanceIsBlocked = false;
				for (var x = 0; x < checkClearance + 1; x++)
				{
					switch (IsBlocked(x + fromCoordinates.X, checkClearance + fromCoordinates.Y, collisionCategory, fromCoordinates))
					{
						case BlockType.Current:
							return checkClearance;
						case BlockType.Next:
							nextClearanceIsBlocked = true;
							break;
					}
				}

				for (var y = 0; y < checkClearance; y++)
				{
					switch (IsBlocked(checkClearance + fromCoordinates.X, y + fromCoordinates.Y, collisionCategory, fromCoordinates))
					{
						case BlockType.Current:
							return checkClearance;
						case BlockType.Next:
							nextClearanceIsBlocked = true;
							break;
					}
				}

				if (nextClearanceIsBlocked)
				{
					var definitionNode = DefinitionNodeArray[index];
					var isBlocked = true;
					for (int i = 0; i < definitionNode.Connections.Count; i++)
					{
						if ((definitionNode.Connections[i].CollisionCategory & collisionCategory) == 0) isBlocked = false;
					}

					return isBlocked ? checkClearance : checkClearance + 1;
				}
			}
			return float.NaN;
		}

		private BlockType IsBlocked(int x, int y, PathfindaxCollisionCategory collisionCategory, Point2 fromCoordinates)
		{
			if (x >= DefinitionNodeArray.Width || y >= DefinitionNodeArray.Height)
				return BlockType.Current;
			var definitionNode = DefinitionNodeArray[x, y];
			var blockType = BlockType.None;
			foreach (var nodeConnection in definitionNode.Connections)
			{
				if ((nodeConnection.CollisionCategory & collisionCategory) != 0)
				{
					var toCoordinates = DefinitionNodeArray.GetCoordinates(nodeConnection.To.Index);
					if (toCoordinates.X >= fromCoordinates.X && toCoordinates.Y >= fromCoordinates.Y)
					{
						if (toCoordinates.X >= x || toCoordinates.Y >= y)
						{
							blockType = BlockType.Next;
						}
						else
						{
							return BlockType.Current;
						}
					}
				}
			}
			return blockType;
		}

		public enum BlockType
		{
			None,
			Next,
			Current,
		}

		public PathRequest CreatePathRequest(IPathfinder pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			var offset = -GridClearanceHelper.GridNodeOffset(agentSize, NodeSize);
			var startNode = GetNode(x1 + offset.X, y1 + offset.Y);
			var endNode = GetNode(x2 + offset.X, y2 + offset.Y);
			return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
		}

		public ICompletedPath CreateCompletedPath(PathRequest pathRequest, List<DefinitionNode> path)
		{
			var offset = GridClearanceHelper.GridNodeOffset(pathRequest.AgentSize, NodeSize);
			return new CompletedPath(path.ToArray(), offset);
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

