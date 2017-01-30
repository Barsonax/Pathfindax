using Duality;
using Pathfindax.Duality.Components;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Duality
{
	/// <summary>
	/// Provides access to the pathfinder
	/// </summary>
	public class PathfinderProxy
	{
		private Vector2? _worldSize;

		public Vector2 WorldSize
		{
			get
			{
				if (_worldSize == null)
				{
					if(_pathfinderComponent == null) return new Vector2(0,0);
					_worldSize = new Vector2(_pathfinderComponent.WorldSize.X, _pathfinderComponent.WorldSize.Y);
				}
				return _worldSize.Value;
			}
		}

		public string PathfinderId { get; set; }
		private IPathfinderComponent _pathfinderComponent;
		private IPathfinderComponent PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxCorePlugin.GetPathfinder(PathfinderId));

		public PathfinderProxy() { }

		public PathfinderProxy(string pathfinderId = null)
		{
			PathfinderId = pathfinderId;
			_pathfinderComponent = null;
		}

		public void RequestPath(PathRequest pathRequest)
		{
			PathfinderComponent.RequestPath(pathRequest);
		}
	}
}