using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public interface IAStarGridNode : IGridNodeBase, IHeapItem<IAStarGridNode>, INode<IAStarGridNode>
	{
		int HCost { get; set; }
		int GCost { get; set; }
		int FCost { get; }
	}
}
