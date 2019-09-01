using System;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public class DynamicPotentialFieldUpdater : IDisposable
	{
		public event Event<DynamicPotentialFieldUpdater> Disposed;
		private readonly DynamicPotentialField _dynamicPotentialField;
		private readonly float _interval;
		private float _currentTime;

		internal DynamicPotentialFieldUpdater(DynamicPotentialField dynamicPotentialField, float interval)
		{
			_dynamicPotentialField = dynamicPotentialField;
			dynamicPotentialField.Disposed += o => Dispose();
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
			Disposed?.Invoke(this);
		}
	}
}