using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class NodeGridBase<TNode> : INodeGrid<TNode>
		where TNode : IGridNodeBase
	{
		public int NodeCount { get; }
		public PositionF Offset { get; }
		public PositionF WorldSize { get; }
		public PositionF NodeSize { get; }
		public ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid { get; }
		public Array2D<TNode> NodeArray { get; protected set; }

		public TNode this[int index] => NodeArray[index];


		public NodeGridBase(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid)
		{
			SourceSourceNodeGrid = sourceNodeGrid;
			Offset = sourceNodeGrid.Offset;
			NodeSize = sourceNodeGrid.NodeSize;
			WorldSize = sourceNodeGrid.WorldSize;
		}
	}
}
