using System.Collections.Generic;
using Duality;

namespace Pathfindax.Nodes
{
	public interface IDefinitionNode
	{
		List<NodeConnection> Connections { get; }
		NodePointer Index { get; }
		float MovementCostModifier { get; set; }
		Vector2 Position { get; set; }

		string ToString();
	}
}