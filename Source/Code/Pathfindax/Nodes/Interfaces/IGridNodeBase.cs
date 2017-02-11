using System.Collections.Generic;

namespace Pathfindax.Nodes
{
	public interface IGridNode : INode<IGridNode> , IGridNodeBase

	{
		
	}

	public interface IGridNodeBase : INode
	{
		bool GetClearance(PathfindaxCollisionCategory collisionCategory, byte neededClearance);
		List<GridClearance> Clearances { get; set; }
		int GridX { get; }
		int GridY { get; }
	}
}
