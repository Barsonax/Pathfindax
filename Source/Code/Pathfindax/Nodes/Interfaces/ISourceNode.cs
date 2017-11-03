namespace Pathfindax.Nodes
{
	public interface ISourceNode
	{
		/// <summary>
		/// Used to map from the source nodes to the nodes where the actual pathfinding is done.
		/// </summary>
		DefinitionNode DefinitionNode { get; }
	}
}