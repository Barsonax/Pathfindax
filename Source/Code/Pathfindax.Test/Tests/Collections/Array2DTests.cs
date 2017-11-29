using System;
using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class Array2DTests
	{
		[Test, TestCaseSource(typeof(Array2DTests), nameof(Array2DTestCases))]
		public void Array2D_2DimensionalAccess_CorrectValue(Array2D<int> array2D, Point2 pointToCheck)
		{
			var value = array2D[pointToCheck.X, pointToCheck.Y];
			Assert.AreEqual(value, array2D.Array[value]);
		}

		[Test, TestCaseSource(typeof(Array2DTests), nameof(Array2DOutOfBoundsTestCases))]
		public void Array2D_2DimensionalAccess_OutOfBounds(Array2D<int> array2D, Point2 pointToCheck)
		{
			Assert.Catch<IndexOutOfRangeException>(() =>
			{
				var unused = array2D[pointToCheck.X, pointToCheck.Y];
			});
		}

		public static IEnumerable Array2DOutOfBoundsTestCases
		{
			get
			{
				yield return GenerateArray2DTestCase(3, 5, new Point2(1, 5));
				yield return GenerateArray2DTestCase(3, 5, new Point2(3, 2));
			}
		}

		public static IEnumerable Array2DTestCases
		{
			get
			{
				yield return GenerateArray2DTestCase(3, 5, new Point2(1, 3));
				yield return GenerateArray2DTestCase(9, 5, new Point2(3, 2));
			}
		}

		private static TestCaseData GenerateArray2DTestCase(int width, int height, Point2 pointToCheck)
		{
			var array = new int[width * height];
			for (var i = 0; i < array.Length; i++)
			{
				array[i] = i;
			}
			return new TestCaseData(new Array2D<int>(array, width, height), pointToCheck).SetName($"Size: {width}:{height}, Point: {pointToCheck}");
		}
	}
}