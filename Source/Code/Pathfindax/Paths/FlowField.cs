using System;
using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public class FlowField : IPath
	{
		public static readonly Vector2[] VectorDirectionCache;

		static FlowField()
		{
			VectorDirectionCache = new Vector2[255];
			VectorDirectionCache[254] = Vector2.Zero;
			var stepAmount = VectorDirectionCache.Length - 1;
			var fullTurn = MathF.Pi * 6;
			var stepSize = fullTurn / (stepAmount - 1);
			for (var i = 0; i < stepAmount; i++)
			{
				var value = stepSize * i;
				VectorDirectionCache[i] = new Vector2(MathF.Cos(value), MathF.Sin(value));
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

			var stepAmount = VectorDirectionCache.Length - 1;
			var fullTurn = MathF.Pi * 6;
			var stepSize = fullTurn / (stepAmount - 1);

			for (var i = 0; i < potentialField.PotentialArray.Array.Length; i++)
			{
				var vector = potentialField[i];
				var angle = MathF.Atan2(vector.X, vector.Y);
				var index = (byte)(angle / stepSize);
				FlowArray[i] = index;
			}
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var gridCoords = GridTransformer.TransformToGridCoords(currentPosition.X, currentPosition.Y);
			var index = GridTransformer.TransformToGridIndex(gridCoords.X, gridCoords.Y);
			if (gridCoords == TargetNode)
			{
				return TargetWorldPosition - currentPosition;
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