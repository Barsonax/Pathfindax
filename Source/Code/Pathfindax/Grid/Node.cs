using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class Node : INode
	{
		public PositionF WorldPosition { get; }
		public bool Walkable { get; set; }
		public int GridX { get; }
		public int GridY { get; }

		public Node(PositionF worldPos, int gridX, int gridY, bool walkable = true)
		{
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = gridX;
			GridY = gridY;
		}

		public Node(PositionF worldPos, bool walkable = true)
		{
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = (int)worldPos.X;
			GridY = (int)worldPos.Y;
		}
	}
}
