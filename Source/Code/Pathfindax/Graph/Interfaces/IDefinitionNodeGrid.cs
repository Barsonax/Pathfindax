using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Graph
{
	/// <summary>
	/// Interface for sourcenodegrids
	/// </summary>
	public interface IDefinitionNodeGrid : IDefinitionNodeNetwork
	{
		new GridTransformer Transformer { get; }
		IReadOnlyArray2D<DefinitionNode> DefinitionNodeArray { get; }
	}
}