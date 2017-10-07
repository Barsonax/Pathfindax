using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for sourcenodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface ISourceNodeNetwork<out TNode> : INodeNetwork<TNode>, ISourceNodeNetwork
		where TNode : ISourceNode
	{
        /// <summary>
        /// Gets the node closest to this position
        /// </summary>
        /// <returns></returns>
        TNode GetNode(float worldX, float worldY);
    }

	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface ISourceNodeNetwork
	{

	}
}