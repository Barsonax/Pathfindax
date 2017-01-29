using System;
using System.Linq;
using Duality;

namespace Pathfindax.Duality
{
	public class PathfinderManager : Component, ICmpInitializable
	{
		private static IPathfinderComponent[] _pathfinderComponents;

		/// <summary>
		/// Gets the <see cref="IPathfinderComponent"/> with the same id. If the <paramref name="id"/> parameter is null then the first pathfinder will be returned.
		/// If there are multiple pathfinders and no id was supplied this will throw a exception.
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public static IPathfinderComponent GetPathfinder(string id = null)
		{
			if (string.IsNullOrEmpty(id))
			{
				try
				{
					return _pathfinderComponents.SingleOrDefault();
				}
				catch (Exception ex)
				{
					throw new InvalidOperationException("If there are multiple pathfinders you have to supply a unique id", ex);
				}
			}
			else
			{
				try
				{
					return _pathfinderComponents.SingleOrDefault(x => x.PathfinderId == id);
				}
				catch (Exception ex)
				{
					throw new InvalidOperationException("2 pathfinders found with the same id", ex);
				}
			}
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_pathfinderComponents = GameObj.ParentScene.FindComponents<IPathfinderComponent>().ToArray();
			}
		}

		public void OnShutdown(ShutdownContext context)
		{
			
		}
	}
}
