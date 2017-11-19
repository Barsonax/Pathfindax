using System.Collections.Generic;

namespace Pathfindax.PathfindEngine
{
	public class PathfindaxManager : IPathfindaxManager
	{
		private readonly List<IPathfinder> _pathfinders = new List<IPathfinder>();
		private readonly List<DynamicPotentialFieldUpdater> _dynamicPotentialFieldUpdaters = new List<DynamicPotentialFieldUpdater>();

		public void RegisterPathfinder(IPathfinder pathfinder)
		{
			_pathfinders.Add(pathfinder);
		}

		public void UnregisterPathfinder(IPathfinder pathfinder)
		{
			_pathfinders.Remove(pathfinder);
		}

		public void Clear()
		{
			_pathfinders.Clear();
			_dynamicPotentialFieldUpdaters.Clear();
		}

		public void Update(float time)
		{
			foreach (var pathfinder in _pathfinders)
			{
				pathfinder.ProcessPaths();
			}

			foreach (var dynamicPotentialFieldUpdater in _dynamicPotentialFieldUpdaters)
			{
				dynamicPotentialFieldUpdater.Update(time);
			}
		}

		public void RegisterDynamicPotentialField(DynamicPotentialFieldUpdater dynamicPotentialFieldUpdater)
		{
			_dynamicPotentialFieldUpdaters.Add(dynamicPotentialFieldUpdater);
		}


		public void UnregisterDynamicPotentialField(DynamicPotentialFieldUpdater dynamicPotentialField)
		{
			_dynamicPotentialFieldUpdaters.Remove(dynamicPotentialField);
		}
	}
}
