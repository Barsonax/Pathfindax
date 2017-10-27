using Duality;
using Microsoft.VisualBasic.CompilerServices;
using Pathfindax.Grid;

namespace Pathfindax.Nodes
{
	public class SourceGridNode : ISourceGridNode
	{
		/// <inheritdoc />
		public Vector2 WorldPosition => new Vector2(GridX * _sourceNodeGrid.NodeSize.X, GridY * _sourceNodeGrid.NodeSize.Y) + _sourceNodeGrid.Offset;

		/// <inheritdoc />
		public GridClearance[] Clearances { get; set; }

		/// <inheritdoc />
		public byte MovementPenalty { get; set; }

		/// <inheritdoc />
		public ushort GridX { get; }

		/// <inheritdoc />
		public ushort GridY { get; }

		/// <inheritdoc />
		public int ArrayIndex => _sourceNodeGrid.NodeArray.Width * GridY + GridX;

		/// <inheritdoc />
		public NodeConnection[] Connections { get; set; }
		private readonly ISourceNodeGrid<ISourceGridNode> _sourceNodeGrid;

		public SourceGridNode(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid, ushort gridX, ushort gridY, byte costMultiplier)
		{
			_sourceNodeGrid = sourceNodeGrid;
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