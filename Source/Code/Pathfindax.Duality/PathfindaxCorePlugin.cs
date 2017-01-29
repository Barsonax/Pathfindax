using Duality;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Duality
{
	/// <summary>
	/// Defines a Duality core plugin.
	/// </summary>
	public class PathfindaxCorePlugin : CorePlugin
	{
		private static IMultithreadedPathfinder _multithreadedPathfinder;
		public static IMultithreadedPathfinder MultithreadedPathfinder
		{
			get
			{
				if (_multithreadedPathfinder == null)
				{					
					//Initialize pathfinder here
				}
				return _multithreadedPathfinder;
			}
		}

		protected override void OnBeforeUpdate()
		{
			base.OnBeforeUpdate();
		}
	}
}
