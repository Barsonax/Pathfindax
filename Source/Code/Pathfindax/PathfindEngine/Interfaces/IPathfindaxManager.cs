namespace Pathfindax.PathfindEngine
{
	public interface IPathfindaxManager
	{
		void RegisterPathfinder(IPathfinder pathfinder);
		void UnregisterPathfinder(IPathfinder pathfinder);
		void RegisterDynamicPotentialField(DynamicPotentialFieldUpdater dynamicPotentialFieldUpdater);
		void UnregisterDynamicPotentialField(DynamicPotentialFieldUpdater dynamicPotentialFieldUpdater);
		void Clear();
		void Update(float time);
	}
}