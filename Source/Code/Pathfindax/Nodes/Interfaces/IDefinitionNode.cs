using System.Collections.Generic;
using Duality;

namespace Pathfindax.Nodes
{
	public interface IDefinitionNode
	{
		NodeConnection[] Connections { get; }
		ArrayIndex Index { get; }
		float MovementCostModifier { get; set; }
		Vector2 Position { get; set; }

		string ToString();
	}
}