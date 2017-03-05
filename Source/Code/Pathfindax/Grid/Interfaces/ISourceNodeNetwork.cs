using Pathfindax.Nodes;
using Pathfindax.Primitives;

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
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		TNode GetNode(PositionF worldPosition);
	}

	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface ISourceNodeNetwork
	{

	}
}