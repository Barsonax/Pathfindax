using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for sourcenodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface ISourceNodeNetwork<out TNode> : ISourceNodeNetwork
		where TNode : ISourceNode
	{
		/// <summary>
		/// Gets the node closest to this position
		/// </summary>
		/// <returns></returns>
		DefinitionNode GetNode(float worldX, float worldY);

		DefinitionNode this[int index] { get; }
	}

	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface ISourceNodeNetwork
	{
		Vector2 Offset { get; }

		int NodeCount { get; }
	}
}