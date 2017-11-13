using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks. Each thread will have its own nodenetwork.
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface IPathfindNodeNetwork<out TNode> : IPathfindNodeNetwork
		where TNode : ICollisionLayerNode
	{
		/// <summary>
		/// Gets a nodenetwork for this <paramref name="collisionCategory"/>.
		/// </summary>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
		new TNode[] GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory);
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface IPathfindNodeNetwork
	{
		IReadOnlyList<ICollisionLayerNode> GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory);
		IDefinitionNodeNetwork DefinitionNodeNetwork { get; }
	}
}