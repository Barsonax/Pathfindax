using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Graph
{
	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface IDefinitionNodeNetwork
	{
		Transformer Transformer { get; }
		/// <summary>
		/// Gets the node closest to this position
		/// </summary>
		/// <returns></returns>
		DefinitionNode GetNode(float worldX, float worldY);

		DefinitionNode this[int index] { get; }

		int NodeCount { get; }
	}
}