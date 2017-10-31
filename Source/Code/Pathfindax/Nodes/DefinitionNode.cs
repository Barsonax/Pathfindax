using System.Collections.Generic;
using Duality;
using Pathfindax.Grid;

namespace Pathfindax.Nodes
{
	public class DefinitionNode : IDefinitionNode
	{
		public NodePointer Index { get; }

		/// <summary>
		/// The position in the <see cref="ISourceNodeNetwork"/>
		/// </summary>
		public Vector2 Position { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty { get; set; }

		public List<NodeConnection> Connections { get; } = new List<NodeConnection>();

		public DefinitionNode(int index, Vector2 position, byte movementPenalty)
		{
			Index = new NodePointer(index);
			Position = position;
			MovementPenalty = movementPenalty;
		}

		public override string ToString()
		{
			return $"Index: {Index} Position: {Position}";
		}
	}
}