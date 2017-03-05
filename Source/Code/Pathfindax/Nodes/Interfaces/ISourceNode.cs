namespace Pathfindax.Nodes
{
	public interface ISourceNode : INode
	{
		/// <summary>
		/// Used to map from the source nodes to the nodes where the actual pathfinding is done.
		/// </summary>
		int ArrayIndex { get; }
	}
}