using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class GridNode : GridNodeBase, IGridNode
	{
		public IList<IGridNode> Neighbours { get; set; }

		public GridNode(PositionF worldPos, int gridX, int gridY, bool walkable = true) : base(worldPos, gridX, gridY, walkable)
		{
			Neighbours = new List<IGridNode>();
		}
	}

	[DebuggerDisplay("{Position}")]
	public abstract class GridNodeBase : NodeBase, IGridNodeBase
	{
		public int GridX { get; }
		public int GridY { get; }

		protected GridNodeBase(PositionF worldPos, int gridX, int gridY, bool walkable = true) : base(worldPos, walkable)
		{
			Walkable = walkable;
			GridX = gridX;
			GridY = gridY;
		}

		protected GridNodeBase(PositionF worldPos, bool walkable = true) : base(worldPos, walkable)
		{
			Walkable = walkable;
			GridX = (int)worldPos.X;
			GridY = (int)worldPos.Y;
		}

		public override string ToString()
		{
			return $"{GridX}:{GridY}";
		}
	}
}