using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class GridNode : IGridNode
	{
		/// <inheritdoc />
		public PositionF Position { get; }

		/// <inheritdoc />
		public PositionF WorldPosition => Position + _nodeNetwork.Offset;

		/// <inheritdoc />
		public GridClearance[] Clearances { get; set; }

		/// <inheritdoc />
		public byte MovementPenalty { get; set; }

		/// <inheritdoc />
		public int GridX { get; }

		/// <inheritdoc />
		public int GridY { get; }

		/// <inheritdoc />
		public NodeConnection<IGridNode>[] Connections { get; set; }
		private readonly INodeNetworkBase _nodeNetwork;

		public GridNode(INodeGridBase nodeNetwork, int gridX, int gridY, byte costMultiplier)
		{
			_nodeNetwork = nodeNetwork;
			Position = new PositionF(gridX * nodeNetwork.NodeSize.X, gridY * nodeNetwork.NodeSize.Y);
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
			return $"{GridX}:{GridY}";
		}
	}
}