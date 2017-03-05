using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public abstract class NodeGridBase<TNode> : INodeGrid<TNode>
		where TNode : IGridNode
	{
		public int NodeCount => NodeArray.Length;
		public PositionF Offset { get; }
		public PositionF WorldSize { get; }
		public PositionF NodeSize { get; }
		public ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid { get; }
		public IReadOnlyArray2D<TNode> NodeArray { get; protected set; }

		public TNode this[int index] => NodeArray[index];


		protected NodeGridBase(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid)
		{
			SourceSourceNodeGrid = sourceNodeGrid;
			Offset = sourceNodeGrid.Offset;
			NodeSize = sourceNodeGrid.NodeSize;
			WorldSize = sourceNodeGrid.WorldSize;
		}
	}
}
