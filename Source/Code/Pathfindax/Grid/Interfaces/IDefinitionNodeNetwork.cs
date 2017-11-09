using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface IDefinitionNodeNetwork
	{
		/// <summary>
		/// Gets the node closest to this position
		/// </summary>
		/// <returns></returns>
		DefinitionNode GetNode(float worldX, float worldY);

		DefinitionNode this[int index] { get; }

		Vector2 Offset { get; }

		int NodeCount { get; }
	}
}