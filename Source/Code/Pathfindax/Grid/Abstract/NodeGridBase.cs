using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public abstract class NodeGridBase<TNode> : INodeGrid<TNode>
		where TNode : IGridNode
	{
		public int NodeCount => NodeArray.Length;
		public Vector2 Offset { get; }
		public Vector2 WorldSize { get; }
		public Vector2 NodeSize { get; }
		public ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid { get; }
		public Array2D<TNode> NodeArray { get; protected set; }

		public TNode this[int index] => NodeArray[index];


		protected NodeGridBase(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid)
		{
			SourceSourceNodeGrid = sourceNodeGrid;
			Offset = sourceNodeGrid.Offset;
			NodeSize = sourceNodeGrid.NodeSize;
			WorldSize = sourceNodeGrid.WorldSize;
		}

        public override string ToString()
        {
            return $"{NodeArray.Height}x{NodeArray.Width} grid";
        }
    }
}
