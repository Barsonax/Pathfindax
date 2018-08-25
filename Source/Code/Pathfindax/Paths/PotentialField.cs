using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class PotentialField : IVectorField
	{
		public PotentialArray PotentialArray { get; }

		public Vector2 this[int i]
		{
			get
			{
				var y = i / Width;
				var x = i - y * Width;
				return this[x, y];
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

		Transformer IPath.Transformer => Transformer;
		public int Width => Transformer.GridSize.X;
		public int Height => Transformer.GridSize.Y;
		public GridTransformer Transformer => PotentialArray.GridTransformer;
		public Point2 TargetNode { get; }
		public Vector2 TargetWorldPosition { get; }

		public PotentialField(GridTransformer gridTransformer, Point2 targetNodePosition, params Array2D<float>[] potentialArrays)
		{
			PotentialArray = new PotentialArray(gridTransformer, potentialArrays);
		}

		private Vector2 GetHeading(int x, int y)
		{
			var currentPotential = GetPotential(x, y);
			var leftPotential = GetPotential(x - 1, y);
			var rightPotential = GetPotential(x + 1, y);
			var upPotential = GetPotential(x, y + 1);
			var downPotential = GetPotential(x, y - 1);

			//Based upon the potentials calculate a movement vector that avoids pointing to a obstacle (does not check diagonal)
			var maxPosX = float.MaxValue;
			var minPosX = float.MinValue;
			var maxPosY = float.MaxValue;
			var minPosY = float.MinValue;
			var substituteValue = float.IsNaN(currentPotential) ? 100000000000f : currentPotential;
			if (IsBlocked(leftPotential))
			{
				minPosX = 0f;
				leftPotential = substituteValue;
			}

			if (IsBlocked(rightPotential))
			{
				maxPosX = 0f;
				rightPotential = substituteValue;
			}

			if (IsBlocked(upPotential))
			{
				maxPosY = 0f;
				upPotential = substituteValue;
			}

			if (IsBlocked(downPotential))
			{
				minPosY = 0f;
				downPotential = substituteValue;
			}

			var xComponent = MathF.Clamp(leftPotential - rightPotential, minPosX, maxPosX);
			var yComponent = MathF.Clamp(downPotential - upPotential, minPosY, maxPosY);

			//Check which of the 4 quadrants the vector will point to and do additional checks to avoid pointing into a diagonal obstacle.
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

			//Check if the vector will have a length of 0 and fix this if this is the case
			if (xComponent == 0f && yComponent == 0f && !IsBlocked(currentPotential))
			{
				if (leftPotential == rightPotential && downPotential == upPotential) return new Vector2(0, 0);
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
			return new Vector2(xComponent, yComponent).Normalized;
		}

		private bool IsBlocked(float potential)
		{
			return float.IsNaN(potential);
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var gridCoords = Transformer.ToGrid(currentPosition);
			if (gridCoords == TargetNode)
			{
				return (TargetWorldPosition - currentPosition).Normalized;
			}
			return this[gridCoords.X, gridCoords.Y];
		}

		public float GetPotential(int x, int y)
		{
			if (x >= 0 && y >= 0 && x < Transformer.GridSize.X && y < Transformer.GridSize.Y)
			{
				var potential = 0f;
				for (var i = 0; i < PotentialArray.Arrays.Length; i++)
				{
					var p = PotentialArray.Arrays[i][x, y];
					if (float.IsNaN(p)) return float.NaN;
					potential += p;
				}
				return potential;
			}
			return float.NaN;
		}
	}
}