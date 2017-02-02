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
		public PositionF NodeSize { get; }
		public int NodeCount => NodeArray.Length;
		public PositionF Offset { get; }

		protected NodeGridBase(Array2D<TNode> grid, PositionF nodeSize, PositionF offset)
		{
			NodeArray = grid;
			WorldSize = new PositionF(NodeArray.Width * nodeSize.X - nodeSize.X, NodeArray.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			Offset = offset;
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