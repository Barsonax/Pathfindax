namespace Pathfindax.Grid
{
	public interface IGridNode<T> : INode<T> , IGridNode
		where T : IGridNode<T>
	{

	}

	public interface IGridNode : INode
	{
		int GridX { get; }
		int GridY { get; }
	}
}
