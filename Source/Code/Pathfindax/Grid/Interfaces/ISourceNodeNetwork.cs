using System.Collections.Generic;
using Duality;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for sourcenodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface ISourceNodeNetwork<out TNode> : ISourceNodeNetwork
		where TNode : ISourceNode
	{
		TNode[] GetSourceNetwork(PathfindaxCollisionCategory collisionCategory);
	}

	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface ISourceNodeNetwork
	{
		PathRequest CreatePathRequest(IPathfinder pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer, byte agentSize);

		ICompletedPath CreateCompletedPath(PathRequest pathRequest, List<DefinitionNode> path);

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