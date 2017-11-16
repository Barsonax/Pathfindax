using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public abstract class PotentialFieldBase : IPath
	{
		public Vector2 this[int i]
		{
			get
			{
				var gridCoords = GridTransformer.TransformToGridCoords(i);
				return this[gridCoords.X, gridCoords.Y];
			}
		}

		public Vector2 this[int x, int y]
		{
			get
			{
				if (TargetNode.X == x && TargetNode.Y == y) return Vector2.Zero;
				var heading = GetHeading(x, y);
				return heading;
			}
		}

		public GridTransformer GridTransformer { get; }
		public Point2 TargetNode { get; protected set; }
		public Vector2 TargetWorldPosition { get; protected set; }

		public PotentialFieldBase(GridTransformer gridTransformer)
		{
			GridTransformer = gridTransformer;
		}

		protected Vector2 GetHeading(int x, int y)
		{
			var currentPotential = GetPotential(x, y);
			var leftPotential = GetPotential(x - 1, y);
			var rightPotential = GetPotential(x + 1, y);
			var upPotential = GetPotential(x, y + 1);
			var downPotential = GetPotential(x, y - 1);
			var maxPosX = float.MaxValue;
			var minPosX = float.MinValue;
			if (IsBlocked(leftPotential))
			{
				minPosX = 0f;
				leftPotential = currentPotential;
			}
			if (IsBlocked(rightPotential))
			{
				maxPosX = 0f;
				rightPotential = currentPotential;
			}

			var maxPosY = float.MaxValue;
			var minPosY = float.MinValue;
			if (IsBlocked(upPotential))
			{
				maxPosY = 0f;
				upPotential = currentPotential;
			}
			if (IsBlocked(downPotential))
			{
				minPosY = 0f;
				downPotential = currentPotential;
			}
			var xComponent = MathF.Clamp(leftPotential - rightPotential, minPosX, maxPosX);
			var yComponent = MathF.Clamp(downPotential - upPotential, minPosY, maxPosY);


			if (xComponent == 0f && yComponent == 0f && !IsBlocked(currentPotential))
			{
				if (leftPotential == rightPotential && (minPosX < 0f || maxPosX > 0f))
				{
					xComponent = minPosX < 0f ? -1f : 1f;
					yComponent = 0f;
				}
				else if (downPotential == upPotential && (minPosY < 0f || maxPosY > 0f))
				{
					xComponent = 0f;
					yComponent = minPosY < 0f ? -1f : 1f;
				}
				else
				{
					xComponent = minPosX < 0f ? -1f : 1;
					yComponent = minPosY < 0f ? -1f : 1f;
				}
			}
			if (xComponent > 0f)
			{
				if (yComponent > 0f)
				{
					var potential = GetPotential(x + 1, y + 1);
					if (IsBlocked(potential))
						xComponent = 0f;
				}
				else if (yComponent < 0f)
				{
					var potential = GetPotential(x + 1, y - 1);
					if (IsBlocked(potential))
						xComponent = 0f;
				}
			}
			else if (xComponent < 0f)
			{
				if (yComponent > 0f)
				{
					var potential = GetPotential(x - 1, y + 1);
					if (IsBlocked(potential))
						xComponent = 0f;
				}
				else if (yComponent < 0f)
				{
					var potential = GetPotential(x - 1, y - 1);
					if (IsBlocked(potential))
						xComponent = 0f;
				}
			}
			return new Vector2(xComponent, yComponent).Normalized;
		}

		private bool IsBlocked(float potential)
		{
			return potential >= DijkstraAlgorithm.ClearanceBlockedCost;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var gridCoords = GridTransformer.TransformToGridCoords(currentPosition.X, currentPosition.Y);
			if (gridCoords == TargetNode)
			{
				return TargetWorldPosition - currentPosition;
			}
			return this[gridCoords.X, gridCoords.Y];
		}

		public bool NextWaypoint() => true;

		public abstract float GetPotential(int x, int y);
	}
}
