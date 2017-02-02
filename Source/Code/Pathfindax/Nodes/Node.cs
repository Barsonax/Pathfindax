using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public class Node : NodeBase, INode<INode>
	{
		public IList<INode> Neighbours { get; set; }

		public Node(PositionF worldPos, bool walkable) : base(worldPos, walkable)
		{
			Neighbours = new List<INode>();
		}
	}

	public abstract class NodeBase : INode
	{
		public INode Parent { get; set; }
		public bool Walkable { get; set; }
		public PositionF Position { get; }

		protected NodeBase(PositionF worldPos, bool walkable)
		{
			Position = worldPos;
			Walkable = walkable;
		}
	}
}