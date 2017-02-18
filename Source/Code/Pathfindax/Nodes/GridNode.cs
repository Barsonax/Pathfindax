using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public class GridNode : IGridNode
	{
		/// <inheritdoc />
		public PositionF WorldPosition => new PositionF(GridX * _nodeGrid.NodeSize.X, GridY * _nodeGrid.NodeSize.Y) + _nodeGrid.Offset;

		/// <inheritdoc />
		public GridClearance[] Clearances { get; set; }

		/// <inheritdoc />
		public byte MovementPenalty { get; set; }

		/// <inheritdoc />
		public ushort GridX { get; }

		/// <inheritdoc />
		public ushort GridY { get; }

		/// <inheritdoc />
		public NodeConnection<IGridNode>[] Connections { get; set; }
		private readonly INodeGridBase _nodeGrid;

		public GridNode(INodeGridBase nodeGrid, ushort gridX, ushort gridY, byte costMultiplier)
		{
			_nodeGrid = nodeGrid;
			GridX = gridX;
			GridY = gridY;
			MovementPenalty = costMultiplier;
		}

		/// <inheritdoc />
		public int GetTrueClearance(PathfindaxCollisionCategory collisionCategory)
		{
			if (Clearances != null)
				foreach (var gridClearance in Clearances)
				{
					if ((gridClearance.CollisionCategory & collisionCategory) != 0)
					{
						return gridClearance.Clearance;
					}
				}
			return int.MaxValue;
		}

		public override string ToString()
		{
			return $"WorldPosition: {WorldPosition.X}:{WorldPosition.Y}  GridPosition: {GridX}:{GridY}";
		}
	}
}