using System;
using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public class FlowField : IPath
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
			//for (int i = 0; i < FlowArray.Length; i++)
			//{
			//	FlowArray[i] = potentialField.GetDirectionIndex(i);
			//}
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			//var gridCoords = GridTransformer.TransformToGridCoords(currentPosition.X, currentPosition.Y);
			//if (gridCoords == TargetNode)
			//{
			//	return TargetWorldPosition - currentPosition;
			//}
			//return this[gridCoords.X, gridCoords.Y];
			throw new NotImplementedException();
		}

		public bool NextWaypoint() => true;

		public override string ToString()
		{
			return $"Flowfield to {TargetNode}";
		}
	}
}