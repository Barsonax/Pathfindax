namespace Pathfindax.Nodes
{
	public interface IGridNode : INode<IGridNode> , IGridNodeBase

	{
		
	}

	public interface IGridNodeBase : INode
	{
		bool GetClearance(PathfindaxCollisionCategory collisionCategory, byte neededClearance);
		GridClearance[] Clearances { get; set; }
		byte MovementPenalty { get; set; }
		int GridX { get; }
		int GridY { get; }
	}
}
