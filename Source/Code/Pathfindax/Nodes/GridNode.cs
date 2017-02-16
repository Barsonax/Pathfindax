using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{WorldPosition}")]
	public class GridNode : IGridNode
	{
		/// <inheritdoc />
		public PositionF WorldPosition => new PositionF(GridX * _nodeNetwork.NodeSize.X, GridY * _nodeNetwork.NodeSize.Y) + _nodeNetwork.Offset;

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
		private readonly INodeGridBase _nodeNetwork;

		public GridNode(INodeGridBase nodeNetwork, ushort gridX, ushort gridY, byte costMultiplier)
		{
			_nodeNetwork = nodeNetwork;
			GridX = gridX;
			GridY = gridY;
			MovementPenalty = costMultiplier;
		}

		/// <inheritdoc />
		public bool Fits(PathfindaxCollisionCategory collisionCategory, byte neededClearance)
		{
			if (neededClearance > 1 && Clearances != null)
				foreach (var gridClearance in Clearances)
				{
					if ((gridClearance.CollisionCategory & collisionCategory) != 0)
					{
						if (gridClearance.Clearance < neededClearance)
						{
							return gridClearance.Clearance == -1 || gridClearance.Clearance > neededClearance;
						}
					}
				}
			return true;
		}

		public override string ToString()
		{
			return $"{WorldPosition.X}:{WorldPosition.Y}";
		}
	}
}