using System;
using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine.Exceptions;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public static class PathfindaxEngine
	{
		public static IEnumerable<IPathfinder> Pathfinders => _pathfinders.Values;
		private static readonly Dictionary<string, IPathfinder> _pathfinders = new Dictionary<string, IPathfinder>();

		private static readonly List<IUpdatable> _updatables = new List<IUpdatable>();

		public static void Register(IPathfinder pathfinder, string key = "")
		{
			_pathfinders.Add(key, pathfinder);
		}

		public static void AddUpdatable(IUpdatable updatable)
		{
			_updatables.Add(updatable);
		}

		public static IPathfinder<TDefinitionNetwork, TThreadNodeNetwork, TPath> GetPathfinder<TDefinitionNetwork, TThreadNodeNetwork, TPath>(string id = "")
			where TDefinitionNetwork : IDefinitionNodeNetwork
			where TThreadNodeNetwork : IPathfindNodeNetwork
			where TPath : IPath
		{
			if (!_pathfinders.TryGetValue(id, out var pathfinder)) throw new PathfinderNotFoundException();
			if (pathfinder is IPathfinder<TDefinitionNetwork, TThreadNodeNetwork, TPath> p)
				return p;
			throw new InvalidPathfinderTypeException();
		}

		public static IPathfinder<TPath> GetPathfinder<TPath>(string id = "")
			where TPath : IPath
		{
			if (!_pathfinders.TryGetValue(id, out var pathfinder)) throw new PathfinderNotFoundException();
			if (pathfinder is IPathfinder<TPath> p)
				return p;
			throw new InvalidPathfinderTypeException();
		}

		public static IPathfinder GetPathfinder(string id = "")
		{
			if (!_pathfinders.TryGetValue(id, out var pathfinder)) throw new InvalidOperationException();
			return pathfinder;
		}

		public static void Clear()
		{
			_pathfinders.Clear();
			_updatables.Clear();
		}

		public static void Update()
		{
			foreach (var pathfinder in _pathfinders)
			{
				pathfinder.Value.ProcessPaths();
			}

			foreach (var updatable in _updatables)
			{
				updatable.Update();
			}
		}
	}
}
