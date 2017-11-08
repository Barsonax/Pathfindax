using System;
using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds the definition data for the nodegrid.
	/// The nodegrid will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeGrid : IDefinitionNodeGrid
	{
		public DefinitionNode this[int index] => DefinitionNodeArray[index];
		public Array2D<DefinitionNode> DefinitionNodeArray { get; }
		IReadOnlyArray2D<DefinitionNode> IDefinitionNodeGrid.DefinitionNodeArray => DefinitionNodeArray;
		public Vector2 WorldSize { get; protected set; }
		public Vector2 NodeSize { get; protected set; }
		public int NodeCount => DefinitionNodeArray.Length;
		public Vector2 Offset { get; protected set; }

		public DefinitionNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			DefinitionNodeArray = grid;
			WorldSize = new Vector2(DefinitionNodeArray.Width * nodeSize.X - nodeSize.X, DefinitionNodeArray.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			Offset = offset;
		}

		public PathRequest CreatePathRequest(IPathfinder pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			var offset = -GridClearanceHelper.GridNodeOffset(agentSize, NodeSize);
			var startNode = GetNode(x1 + offset.X, y1 + offset.Y);
			var endNode = GetNode(x2 + offset.X, y2 + offset.Y);
			return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
		}

		public IPath CreateCompletedPath(PathRequest pathRequest, List<DefinitionNode> path)
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

