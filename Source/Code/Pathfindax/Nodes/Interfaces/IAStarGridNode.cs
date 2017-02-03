using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public interface IAStarGridNode : IGridNodeBase, IHeapItem<IAStarGridNode>, INode<IAStarGridNode>
	{
		IAStarGridNode Parent { get; set; }
		int HCost { get; set; }
		int GCost { get; set; }
		int FCost { get; }
	}
}
