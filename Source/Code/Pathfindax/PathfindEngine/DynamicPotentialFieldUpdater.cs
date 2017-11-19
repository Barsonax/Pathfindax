using System;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public class DynamicPotentialFieldUpdater : IDisposable
	{
		private readonly IPathfindaxManager _pathfindaxManager;
		private readonly DynamicPotentialField _dynamicPotentialField;
		private readonly float _interval;
		private float _currentTime;

		public DynamicPotentialFieldUpdater(IPathfindaxManager pathfindaxManager, DynamicPotentialField dynamicPotentialField, float interval)
		{
			_pathfindaxManager = pathfindaxManager;
			_pathfindaxManager.RegisterDynamicPotentialField(this);
			_dynamicPotentialField = dynamicPotentialField;
			_interval = interval;
		}

		public void Update(float time)
		{
			_currentTime += time;
			if (_currentTime >= _interval)
			{
				_dynamicPotentialField.Update();
				_currentTime = 0f;
			}
		}

		public void Dispose()
		{
			_pathfindaxManager.UnregisterDynamicPotentialField(this);
		}
	}
}