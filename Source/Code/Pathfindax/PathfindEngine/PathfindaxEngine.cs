using System;
using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine.Exceptions;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public class Updater
	{
		private readonly IUpdatable _updatable;
		private readonly float _interval;
		private float _currentTime;

		public Updater(IUpdatable updatable, float interval)
		{
			_updatable = updatable;
			_interval = interval;
		}

		public void Update(float time)
		{
			_currentTime += time;
			if (_currentTime >= _interval)
			{
				_updatable.Update();
				_currentTime = 0f;
			}
		}
	}

	public static class PathfindaxEngine
	{
		public static IEnumerable<IPathfinder> Pathfinders => _pathfinders.Values;
		private static readonly Dictionary<string, IPathfinder> _pathfinders = new Dictionary<string, IPathfinder>();

		private static readonly Dictionary<IUpdatable, Updater> Updatables = new Dictionary<IUpdatable, Updater>();

		public static void Register(IPathfinder pathfinder, string key = "")
		{
			_pathfinders.Add(key, pathfinder);
		}

		public static void AddUpdatable(IUpdatable updatable, float interval)
		{
			Updatables.Add(updatable, new Updater(updatable, interval));
		}

		public static void RemoveUpdatable(IUpdatable updatable)
		{
			Updatables.Remove(updatable);
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

		public static IPathfinder<TDefinitionNetwork, TPath> GetPathfinder<TDefinitionNetwork, TPath>(string id = "")
			where TDefinitionNetwork : IDefinitionNodeNetwork
			where TPath : IPath
		{
			if (!_pathfinders.TryGetValue(id, out var pathfinder)) throw new PathfinderNotFoundException();
			if (pathfinder is IPathfinder<TDefinitionNetwork, TPath> p)
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
			Updatables.Clear();
		}

		public static void Update(float time)
		{
			foreach (var pathfinder in _pathfinders)
			{
				pathfinder.Value.ProcessPaths();
			}

			foreach (var updatable in Updatables)
			{
				updatable.Value.Update(time);
			}
		}
	}
}
