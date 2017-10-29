using System.Collections.Generic;
using Duality;
using Pathfindax.Grid;

namespace Pathfindax.Nodes
{
	public class SourceGridNode : ISourceGridNode
	{
		/// <inheritdoc />
		public Vector2 WorldPosition => new Vector2(GridX * _sourceNodeGrid.NodeSize.X, GridY * _sourceNodeGrid.NodeSize.Y) + _sourceNodeGrid.Offset;

		/// <summary>
		/// The stored clearances. Note that this is not the real clearance but a efficient way of storing them.
		/// Call <see cref="GetTrueClearance"/> if you want the real clearance
		/// </summary>
		public GridClearance[] Clearances { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty { get; set; }

		/// <inheritdoc />
		public ushort GridX { get; }

		/// <inheritdoc />
		public ushort GridY { get; }

		/// <inheritdoc />
		public NodePointer Index { get; }

		/// <inheritdoc />
		public List<NodeConnection> Connections { get; set; } = new List<NodeConnection>();

		private readonly ISourceNodeGrid<ISourceGridNode> _sourceNodeGrid;

		public SourceGridNode(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid, ushort gridX, ushort gridY, byte movementPenalty)
		{
			_sourceNodeGrid = sourceNodeGrid;
			GridX = gridX;
			GridY = gridY;
			Index = new NodePointer(sourceNodeGrid.NodeArray.Width * GridY + GridX);
			MovementPenalty = movementPenalty;
		}

		/// <summary>
		/// Calculates the true clearance from the <see cref="Clearances"/> for the given <paramref name="collisionCategory"/> and returns this.
		/// </summary>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
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