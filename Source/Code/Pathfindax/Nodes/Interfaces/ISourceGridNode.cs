namespace Pathfindax.Nodes
{
	public interface ISourceGridNode : IGridNode, ISourceNode

	{
		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		NodeConnection<ISourceGridNode>[] Connections { get; set; }
	}
}