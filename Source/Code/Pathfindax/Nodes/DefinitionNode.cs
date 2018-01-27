using System.Collections.Generic;
using Duality;
using Pathfindax.Graph;
using Pathfindax.Utils;

namespace Pathfindax.Nodes
{
	public class DefinitionNode : IDefinitionNode
	{
		public NodePointer Index { get; }

		/// <summary>
		/// The position in the <see cref="IDefinitionNodeNetwork"/>
		/// </summary>
		public Vector2 Position { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid or prefer certain nodes.
		/// </summary>
		public float MovementCostModifier { get; set; }

		public NodeConnection[] Connections { get; private set; } = new NodeConnection[0];

		public DefinitionNode(int index, Vector2 position, float movementCostModifier = 1f)
		{
			Index = new NodePointer(index);
			Position = position;
			MovementCostModifier = movementCostModifier;
		}

		public void SetConnectionCollision(int index, PathfindaxCollisionCategory collisionCategory)
		{
			Connections[index] = new NodeConnection(Connections[index].To, collisionCategory);
		}

		public void AddConnection(DefinitionNode to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			AddConnection(to.Index, collisionCategory);
		}

		public void AddConnection(NodePointer to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			Connections = Connections.Append(new NodeConnection(to, collisionCategory));
		}

		public override string ToString()
		{
			return $"From: {Index} Position: {Position}";
		}
	}
}