using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class GridNode : IGridNode
	{
		public PositionF WorldPosition { get; }
		public IList<IGridNode> Neighbours { get; set; }
		public bool Walkable { get; set; }
		public int GridX { get; }
		public int GridY { get; }

		public GridNode(PositionF worldPos, int gridX, int gridY, bool walkable = true)
		{
			Neighbours = new List<IGridNode>();
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = gridX;
			GridY = gridY;
		}

		public GridNode(PositionF worldPos, bool walkable = true)
		{
			Neighbours = new List<IGridNode>();
			Walkable = walkable;
			WorldPosition = worldPos;
			GridX = (int)worldPos.X;
			GridY = (int)worldPos.Y;
		}
	}
}
