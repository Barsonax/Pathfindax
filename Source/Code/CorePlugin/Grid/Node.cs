using Duality;

namespace Pathfindax.Grid
{
	public class Node : INode
	{
		public Vector2 WorldPosition { get; private set; }
		public bool Walkable { get; set; }
		public int GridX { get; private set; }
		public int GridY { get; private set; }

		public Node(Vector2 worldPos, int gridX, int gridY, bool walkable = true)
		{
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = gridX;
			GridY = gridY;
		}

		public Node(Vector2 worldPos, bool walkable = true)
		{
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = (int)worldPos.X;
			GridY = (int)worldPos.Y;
		}
	}
}
