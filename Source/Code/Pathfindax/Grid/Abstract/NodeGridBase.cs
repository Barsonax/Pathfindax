using System.Collections;
using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public abstract class NodeGridBase<TNode> : INodeGrid<TNode>
		where TNode : IGridNode
	{
		public Vector2 NodeSize { get; }
		public ISourceNodeGrid<ISourceGridNode> SourceNodeGrid { get; }
		ISourceNodeGrid INodeGrid.SourceNodeGrid => SourceNodeGrid;
		ISourceNodeNetwork INodeNetwork.SourceNodeNetwork => SourceNodeGrid;
		ISourceNodeNetwork<ISourceNode> INodeNetwork<TNode>.SourceNodeNetwork => SourceNodeGrid;
		public Array2D<TNode> NodeArray { get; protected set; }
		public TNode this[int index] => NodeArray[index];

		protected NodeGridBase(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid)
		{
			SourceNodeGrid = sourceNodeGrid;
			NodeSize = sourceNodeGrid.NodeSize;
		}

		public override string ToString()
		{
			return $"{NodeArray.Height}x{NodeArray.Width} grid";
		}

		public IEnumerator<TNode> GetEnumerator()
		{
			return NodeArray.GetEnumerator();
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}
	}
}
