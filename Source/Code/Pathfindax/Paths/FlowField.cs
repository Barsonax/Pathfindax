using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class FlowField : IVectorField
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
		public Vector2 this[int x, int y] => VectorDirectionCache[FlowArray[x, y]];
		public int Width => FlowArray.Width;
		public int Height => FlowArray.Height;

		Transformer IPath.Transformer => GridTransformer;
		public readonly GridTransformer GridTransformer;
		public readonly Array2D<byte> FlowArray;
		public readonly Point2 TargetNode;
		public readonly Vector2 TargetWorldPosition;

		public FlowField(PotentialField potentialField)
		{
			TargetNode = potentialField.TargetNode;
			TargetWorldPosition = potentialField.TargetWorldPosition;
			GridTransformer = potentialField.GridTransformer;
			FlowArray = new Array2D<byte>(potentialField.PotentialArray.Width, potentialField.PotentialArray.Height);

			for (int y = 0; y < potentialField.PotentialArray.Height; y++)
			{
				for (int x = 0; x < potentialField.PotentialArray.Width; x++)
				{
					var vector = potentialField[x, y];
					if (vector.X == 0 && vector.Y == 0)
					{
						FlowArray[x, y] = 254;
					}
					else
					{
						var angle = MathF.Atan2(vector.Y, vector.X);
						var index = (byte)((angle + HalfTurn) / FullTurn * StepAmount);
						FlowArray[x, y] = index;
					}
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
			if (gridCoords == TargetNode)
			{
				return (TargetWorldPosition - currentPosition).Normalized;
			}
			return this[gridCoords.X, gridCoords.Y];
		}

		public bool NextWaypoint() => true;

		public override string ToString()
		{
			return $"Flowfield to {TargetNode}";
		}
	}
}