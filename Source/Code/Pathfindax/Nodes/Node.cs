using System;
using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public class Node : NodeBase, INode<INode>
	{
		public IList<NodeConnection<INode>> Connections { get; set; }

		public Node(INodeNetworkBase nodeNetwork, PositionF worldPos, bool walkable) : base(nodeNetwork, worldPos, walkable)
		{
			Connections = new List<NodeConnection<INode>>();
		}
	}

	public abstract class NodeBase : INode
	{
		public INodeNetworkBase NodeNetwork { get; }
		public bool Walkable { get; set; }
		public PositionF Position { get; }
		public PositionF WorldPosition => Position + NodeNetwork.Offset;

		protected NodeBase(INodeNetworkBase nodeNetwork, PositionF worldPos, bool walkable)
		{
			Position = worldPos;
			Walkable = walkable;
			NodeNetwork = nodeNetwork;
		}
	}
}