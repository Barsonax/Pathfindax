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
		ref DefinitionNode GetNode(float worldX, float worldY);
		DefinitionNode[] NodeArray { get; }

		int NodeCount { get; }
		int GetNodeIndex(float x, float y);
	}
}