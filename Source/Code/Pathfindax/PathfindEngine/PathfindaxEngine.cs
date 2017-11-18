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
		private static readonly List<IPathfinder> Pathfinders = new List<IPathfinder> ();

		private static readonly Dictionary<IUpdatable, Updater> Updatables = new Dictionary<IUpdatable, Updater>();

		public static void Register(IPathfinder pathfinder)
		{
			Pathfinders.Add(pathfinder);
		}

		public static void UnRegister(IPathfinder pathfinder)
		{
			Pathfinders.Remove(pathfinder);
		}

		public static void AddUpdatable(IUpdatable updatable, float interval)
		{
			Updatables.Add(updatable, new Updater(updatable, interval));
		}

		public static void RemoveUpdatable(IUpdatable updatable)
		{
			Updatables.Remove(updatable);
		}

		public static void Clear()
		{
			Pathfinders.Clear();
			Updatables.Clear();
		}

		public static void Update(float time)
		{
			foreach (var pathfinder in Pathfinders)
			{
				pathfinder.ProcessPaths();
			}

			foreach (var updatable in Updatables)
			{
				updatable.Value.Update(time);
			}
		}
	}
}
