using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Interface for sourcenodegrids
	/// </summary>
	public interface IDefinitionNodeGrid : IDefinitionNodeNetwork
	{
		IReadOnlyArray2D<DefinitionNode> DefinitionNodeArray { get; }
		Vector2 NodeSize { get; }

		Vector2 WorldSize { get; }
	}
}