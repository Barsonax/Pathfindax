using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class PotentialField : IPath
	{
		public static readonly Vector2[] VectorDirectionCache = {
			new Vector2(-1, -1).Normalized,
			new Vector2(0, -1).Normalized,
			new Vector2(1, -1).Normalized,
			new Vector2(-1, 0).Normalized,

			Vector2.Zero, 

			new Vector2(1, 0).Normalized,
			new Vector2(-1, 1).Normalized,
			new Vector2(0, 1).Normalized,
			new Vector2(1, 1).Normalized,
		};

		public static readonly Point2[] PointDirectionCache = {
			new Point2(-1, -1),
			new Point2(0, -1),
			new Point2(1, -1),
			new Point2(-1, 0),

			Point2.Zero,

			new Point2(1, 0),
			new Point2(-1, 1),
			new Point2(0, 1),
			new Point2(1, 1),
		};

		public Vector2 this[int i] => VectorDirectionCache[GetDirectionIndex(i)];
		public readonly DefinitionNodeGrid DefinitionNodeGrid;
		public readonly Array2D<float> PotentialArray;
		public readonly int TargetIndex;

		public PotentialField(DefinitionNodeGrid definitionNodeGrid, DijkstraNode targetNode, Array2D<float> potentialArray)
		{
			DefinitionNodeGrid = definitionNodeGrid;
			PotentialArray = potentialArray;
			TargetIndex = targetNode.DefinitionNode.Index.Index;
		}

		public byte GetDirectionIndex(int i)
		{
			var y = i / PotentialArray.Width;
			var x = i - y * PotentialArray.Width;
			byte goalDirectionIndex = 4;
			var lowestPotential = float.MaxValue;
			for (byte j = 0; j < PointDirectionCache.Length; j++)
			{
				var nodePos = new Point2(PointDirectionCache[j].X + x, PointDirectionCache[j].Y + y);
				if (nodePos.X >= 0 && nodePos.Y >= 0 && nodePos.X < PotentialArray.Width && nodePos.Y < PotentialArray.Height)
				{
					var potential = PotentialArray[nodePos.X, nodePos.Y];
					if (potential < lowestPotential && potential < DijkstraAlgorithm.ClearanceBlockedCost)
					{
						goalDirectionIndex = j;
						lowestPotential = potential;
					}
				}
			}
			return goalDirectionIndex;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var definitionNode = DefinitionNodeGrid.GetNode(currentPosition.X, currentPosition.Y);
			if (definitionNode.Index.Index == TargetIndex)
			{
				return definitionNode.Position - currentPosition;
			}
			return this[definitionNode.Index.Index];
		}

		public bool NextWaypoint()
		{
			return true;
		}
	}
}
