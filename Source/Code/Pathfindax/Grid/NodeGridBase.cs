using System;
using System.Collections;
using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Pathfindax.Grid
{
	public abstract class NodeGridBase<TNode> : INodeGrid<TNode>
		where TNode : IGridNodeBase
	{
		public Array2D<TNode> NodeArray { get; protected set; }
		public PositionF WorldSize { get; protected set; }
		public int NodeCount => NodeArray.Length;

		protected NodeGridBase(Array2D<TNode> grid, float cellSize)
		{
			NodeArray = grid;
			WorldSize = new PositionF(NodeArray.Width * cellSize - cellSize, NodeArray.Height * cellSize - cellSize);
		}

		protected NodeGridBase() { }

		public IEnumerator<TNode> GetEnumerator()
		{
			foreach (var gridNode in NodeArray)
			{
				yield return gridNode;
			}
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}

		public TNode GetNode(PositionF worldPosition)
		{
			var percentX = worldPosition.X / WorldSize.X;
			var percentY = worldPosition.Y / WorldSize.Y;
			percentX = Mathf.Clamp(percentX, 0, 1);
			percentY = Mathf.Clamp(percentY, 0, 1);

			var x = (int)Math.Round((NodeArray.Width - 1) * percentX);
			var y = (int)Math.Round((NodeArray.Height - 1) * percentY);

			return NodeArray[x, y];
		}
	}
}