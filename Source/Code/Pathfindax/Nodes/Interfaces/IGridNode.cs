namespace Pathfindax.Nodes
{
	public interface IGridNode : INode
	{
		ISourceGridNode SourceGridNode { get; }
	}
}
