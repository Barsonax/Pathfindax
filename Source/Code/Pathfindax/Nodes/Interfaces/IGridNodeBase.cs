using System.Collections.Generic;

namespace Pathfindax.Nodes
{
	public interface IGridNode : INode<IGridNode> , IGridNodeBase

	{

	}

	public interface IGridNodeBase : INode
	{
		IList<GridClearance> Clearances { get; set; }
		int GridX { get; }
		int GridY { get; }
	}
}
