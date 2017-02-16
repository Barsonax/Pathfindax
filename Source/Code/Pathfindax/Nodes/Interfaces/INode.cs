using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public interface INode<TNode> : INode
		where TNode : class, INode
	{
		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		NodeConnection<TNode>[] Connections { get; set; }
	}

	public interface INode
	{
		/// <summary>
		/// The absolute world position
		/// </summary>
		PositionF WorldPosition { get; }
	}
}