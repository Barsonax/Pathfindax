using Duality;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class FlowField : IPath
	{
		public static readonly Vector2[] VectorDirectionCache;
		private const float FullTurn = HalfTurn * 2;
		private const float HalfTurn = MathF.Pi;
		private const byte StepAmount = 248;

		static FlowField()
		{
			VectorDirectionCache = new Vector2[255];
			VectorDirectionCache[254] = Vector2.Zero;
			for (var i = 0; i <= StepAmount; i++)
			{
				var value = (float)i / StepAmount * FullTurn;
				VectorDirectionCache[i] = -new Vector2(MathF.Cos(value), MathF.Sin(value));
			}
		}

		public Vector2 this[int i] => VectorDirectionCache[FlowArray[i]];

		public readonly GridTransformer GridTransformer;
		public readonly byte[] FlowArray;
		public readonly Point2 TargetNode;
		public readonly Vector2 TargetWorldPosition;

		public FlowField(PotentialField potentialField)
		{
			TargetNode = potentialField.TargetNode;
			TargetWorldPosition = potentialField.TargetWorldPosition;
			GridTransformer = potentialField.GridTransformer;
			FlowArray = new byte[potentialField.PotentialArray.Array.Length];

			for (var i = 0; i < potentialField.PotentialArray.Array.Length; i++)
			{
				var vector = potentialField[i];
				if (vector.X == 0 && vector.Y == 0)
				{
					FlowArray[i] = 254;
				}
				else
				{
					var angle = MathF.Atan2(vector.Y, vector.X);
					var index = (byte)((angle + HalfTurn) / FullTurn * StepAmount);
					FlowArray[i] = index;
				}
			}
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var gridCoords = GridTransformer.ToGrid(currentPosition);
			var index = GridTransformer.ToIndex(gridCoords.X, gridCoords.Y);
			if (gridCoords == TargetNode)
			{
				return (TargetWorldPosition - currentPosition).Normalized;
			}
			return this[index];
		}

		public bool NextWaypoint() => true;

		public override string ToString()
		{
			return $"Flowfield to {TargetNode}";
		}
	}
}