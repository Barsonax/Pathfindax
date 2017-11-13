using System.Diagnostics;
using Duality;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder.
	/// </summary>
	/// <typeparam name="TPath"></typeparam>
	public class PathfinderProxy<TPath>
		where TPath : IPath
	{
		/// <summary>
		/// The id of the pathfinder.
		/// </summary>
		public string PathfinderId { get; }

		private IPathfinder<TPath> _pathfinder;
		/// <summary>
		/// The actual pathfinder
		/// </summary>
		public IPathfinder<TPath> Pathfinder
		{
			get
			{
				if (_pathfinder != null) return _pathfinder;

				var pathfinderComponent = PathfindaxEngine.GetPathfinder<TPath>(PathfinderId);
				if (pathfinderComponent == null)
				{
					Debug.WriteLine(PathfinderId == null
						? $"{GetType()}: Could not find a pathfinder with path type: {typeof(TPath)}"
						: $"{GetType()}: Could not find a pathfinder with path type: {typeof(TPath)} with id: {PathfinderId}");
				}
				_pathfinder = pathfinderComponent;
				return _pathfinder;
			}
		}

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy{TPath}"/>. The id has to be supplied if there is more than 1 <see cref="IPathfinder"/>.
		/// </summary>
		public PathfinderProxy(string pathfinderId = "")
		{
			PathfinderId = pathfinderId;
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest<TPath> RequestPath(Vector3 start, Vector3 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest<TPath> RequestPath(Vector2 start, Vector2 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="x1"></param>
		/// <param name="y1"></param>
		/// <param name="x2"></param>
		/// <param name="y2"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest<TPath> RequestPath(float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return Pathfinder.PathFindAlgorithm.CreatePathRequest(Pathfinder, Pathfinder.DefinitionNodeNetwork, x1, y1, x2, y2, collisionLayer, agentSize);
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		public PathRequest<TPath> RequestPath(DefinitionNode start, DefinitionNode end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return PathRequest.Create(Pathfinder, start, end, collisionLayer, agentSize);
		}
	}
}