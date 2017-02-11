using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class GridNode : IGridNode
	{
		public INodeNetworkBase NodeNetwork { get; }
		public PositionF Position { get; }
		public PositionF WorldPosition => Position + NodeNetwork.Offset;
		public List<GridClearance> Clearances { get; set; }
		public int GridX { get; }
		public int GridY { get; }
		public List<NodeConnection<IGridNode>> Connections { get; set; }

		public GridNode(INodeGridBase nodeNetwork, int gridX, int gridY)
		{
			NodeNetwork = nodeNetwork;
			Connections = new List<NodeConnection<IGridNode>>();
			Position = new PositionF(gridX * nodeNetwork.NodeSize.X, gridY * nodeNetwork.NodeSize.Y);
			GridX = gridX;
			GridY = gridY;
		}

		public bool GetClearance(PathfindaxCollisionCategory collisionCategory, byte neededClearance)
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