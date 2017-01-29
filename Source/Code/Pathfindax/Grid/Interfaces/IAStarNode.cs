using System.Collections.Generic;
using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface IAStarNode : INode, IHeapItem<IAStarNode>
	{
		IAStarNode Parent { get; set; }
		int HCost { get; set; }
		int GCost { get; set; }
		List<IAStarNode> Neighbours { get; set; }
		int FCost { get; }
		INode Source { get; }
	}
}
