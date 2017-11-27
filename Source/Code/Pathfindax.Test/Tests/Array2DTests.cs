using System;
using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	class Array2DTests
	{
		[Test, TestCaseSource(typeof(Array2DTests), nameof(Array2DTestCases))]
		public void Array2D_2DimensionalAccess(Array2D<int> array2D, bool shouldCrash, Point2 pointToCheck)
		{
			if (shouldCrash)
			{
				Assert.Catch<IndexOutOfRangeException>(() =>
				{
					var unused = array2D[pointToCheck.X, pointToCheck.Y];
				});
			}
			else
			{
				var value = array2D[pointToCheck.X, pointToCheck.Y];
				Assert.AreEqual(value, array2D.Array[value]);
			}
		}

		public static IEnumerable Array2DTestCases
		{
			get
			{
				yield return GenerateArray2DTestCase(3, 5, false, new Point2(1, 3));
				yield return GenerateArray2DTestCase(3, 5, true, new Point2(1, 5));
				yield return GenerateArray2DTestCase(3, 5, true, new Point2(3, 2));
				yield return GenerateArray2DTestCase(9, 5, false, new Point2(3, 2));
			}
		}

		private static TestCaseData GenerateArray2DTestCase(int width, int height, bool shouldCrash, Point2 pointToCheck)
		{
			var array = new int[width * height];
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = i;
			}
			return new TestCaseData(new Array2D<int>(array, width, height), shouldCrash, pointToCheck).SetName($"Size: {width}:{height}, ShouldCrash: {shouldCrash} Point: {pointToCheck}");
		}
	}
}