using System.Collections.Generic;
using System.Threading;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// A dummy pathfinder that is designed to do nothing at all. 
	/// </summary>
	/// <typeparam name="TDefinitionNodeNetwork"></typeparam>
	/// <typeparam name="TPathfindNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public class DummyPathfinder<TDefinitionNodeNetwork, TPathfindNodeNetwork, TPath> : IPathfinder<TDefinitionNodeNetwork, TPathfindNodeNetwork, TPath>
		where TDefinitionNodeNetwork : IDefinitionNodeNetwork
		where TPathfindNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		public ISynchronizationContext SynchronizationContext => new SynchronizationContextAdapter(new SynchronizationContext());

		public IPathFindAlgorithm<TPathfindNodeNetwork, TPath> PathFindAlgorithm => new DummyPathfindAlgorithm<TPathfindNodeNetwork, TPath>();
		IPathFindAlgorithm<TPath> IPathfinder<TPath>.PathFindAlgorithm => PathFindAlgorithm;

		IPathFindAlgorithm IPathfinder.PathFindAlgorithm => PathFindAlgorithm;

		public IReadOnlyList<TPathfindNodeNetwork> PathfindNodeNetworks => new List<TPathfindNodeNetwork>();
		IReadOnlyList<IPathfindNodeNetwork> IPathfinder.PathfindNodeNetworks => (IReadOnlyList<IPathfindNodeNetwork>)PathfindNodeNetworks;

		public TDefinitionNodeNetwork DefinitionNodeNetwork => default;
		IDefinitionNodeNetwork IPathfinder.DefinitionNodeNetwork => DefinitionNodeNetwork;

		public event Event<IPathfinder> Disposed;

		public void RequestPath(PathRequest<TPath> pathRequest)
		{

		}

		public PathRequest<TPath> RequestPath(Vector3 start, Vector3 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
		}

		public PathRequest<TPath> RequestPath(Vector2 start, Vector2 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
		}

		public PathRequest<TPath> RequestPath(float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return RequestPath(0, 0, collisionLayer, agentSize);
		}

		public PathRequest<TPath> RequestPath(int start, int end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return PathRequest.Create(this, 0, 0, PathfindaxCollisionCategory.None, 0);
		}

		public void Start()
		{

		}

		public void Stop()
		{

		}

		public void Dispose()
		{

		}
	}
}
