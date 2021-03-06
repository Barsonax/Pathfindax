﻿using Duality;
using Pathfindax.Graph;
using Pathfindax.Utils;

namespace Pathfindax.Nodes
{
	public struct DefinitionNode
	{
		/// <summary>
		/// The position in the <see cref="IDefinitionNodeNetwork"/>
		/// </summary>
		public Vector2 Position;

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid or prefer certain nodes.
		/// </summary>
		public float MovementCostModifier;

		public NodeConnection[] Connections;

		public DefinitionNode(Vector2 position, float movementCostModifier = 1f, NodeConnection[] connections = null)
		{
			Position = position;
			MovementCostModifier = movementCostModifier;
			Connections = connections ?? new NodeConnection[0];
		}

		public void AddConnection(int to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			Connections = Connections.Append(new NodeConnection(to, collisionCategory));
		}

		public override string ToString()
		{
			return $"Position: {Position}";
		}
	}
}