namespace Pathfindax.Nodes
{
	public class GridClearance
	{
		public int Clearance;
		public PathfindaxCollisionCategory CollisionCategory;

		public GridClearance(PathfindaxCollisionCategory collisionCategory, int clearance)
		{
			CollisionCategory = collisionCategory;
			Clearance = clearance;
		}

		public override string ToString()
		{
			return $"{CollisionCategory} : {Clearance}";
		}
	}
}