using System;
using Duality;

namespace Pathfindax
{
	public static class GridUtils
	{
		/// <summary>
		/// This function will loop through every gridposition in a rectangle and execute the action delegate for that position. The size of the rectangle is defined by the 2 vector parameters.
		/// </summary>
		/// <param name="firstPoint"></param>The first point of the rectangle
		/// <param name="secondPoint"></param>The second point of the rectangle
		/// <param name="gridSize"></param>The size of the selection grid
		/// <param name="gridAction"></param>The delegate that will be exectuted for every gridposition in the rectangle
		public static void LoopThroughTilesInRectangle(Vector2 firstPoint, Vector2 secondPoint, float gridSize, Action<Vector2, int> gridAction)
		{
			VectorMath.ReOrderVector2LowestToHighest(ref firstPoint, ref secondPoint); //Reorders the x and y coordinates so that firstPoint will always have a smaller x and y than the secondPoint.
			var size = IntegerVectorMath.RectangleSize(firstPoint / gridSize, secondPoint / gridSize);
			var i = 0;
			for (var y = 0; y < size.Y; y++)
			{
				for (var x = 0; x < size.X; x++)
				{
					gridAction(firstPoint + new Vector2(x * gridSize, y * gridSize), i);
					i++;
				}
			}
		}

		public static void LoopThroughTilesInRectangle(Rect area, float gridSize, Action<Vector2, int> gridAction)
		{
			LoopThroughTilesInRectangle(new Vector2(area.X, area.Y), new Vector2(area.X + area.W, area.Y + area.H), gridSize, gridAction);
		}
	}

	public static class IntegerVectorMath
	{
		public static Point2 RectangleSize(Vector2 firstPoint, Vector2 secondPoint)
		{			
			return new Point2((int)Math.Abs(MathF.Floor(firstPoint.X) - MathF.Ceiling(secondPoint.X)), (int)Math.Abs(MathF.Floor(firstPoint.Y) - MathF.Ceiling(secondPoint.Y)));
		}
	}

	public static class VectorMath
	{
		public static void SwitchX(ref Vector2 firstVector, ref Vector2 secondVector)
		{
			var firstX = firstVector.X;
			var secondX = secondVector.X;
			firstVector = new Vector2(secondX, firstVector.Y);
			secondVector = new Vector2(firstX, secondVector.Y);
		}

		public static void SwitchY(ref Vector2 firstVector, ref Vector2 secondVector)
		{
			var firstY = firstVector.Y;
			var secondY = secondVector.Y;
			firstVector = new Vector2(firstVector.X, secondY);
			secondVector = new Vector2(secondVector.X, firstY);
		}

		public static void ReOrderVector2LowestToHighest(ref Vector2 firstVector, ref Vector2 secondVector)
		{
			if (firstVector.X > secondVector.X) SwitchX(ref firstVector, ref secondVector);
			if (firstVector.Y > secondVector.Y) SwitchY(ref firstVector, ref secondVector);
		}
	}
}
