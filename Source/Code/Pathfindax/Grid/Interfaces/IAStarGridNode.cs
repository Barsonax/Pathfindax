using System.Collections.Generic;
using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface IAStarGridNode : IGridNode<IAStarGridNode>, IHeapItem<IAStarGridNode>
	{
		IAStarGridNode Parent { get; set; }
		int HCost { get; set; }
		int GCost { get; set; }
		int FCost { get; }
		IGridNode Source { get; }
	}
}
