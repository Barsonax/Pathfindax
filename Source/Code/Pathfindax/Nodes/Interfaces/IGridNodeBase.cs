namespace Pathfindax.Nodes
{
	public interface IGridNode : INode<IGridNode> , IGridNodeBase

	{

	}

	public interface IGridNodeBase : INode
	{
		int GridX { get; }
		int GridY { get; }
	}
}
