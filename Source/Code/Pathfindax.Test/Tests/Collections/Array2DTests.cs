using System;
using System.Linq;
using Duality;
using Xunit;
using Pathfindax.Collections;
using System.Collections.Generic;

namespace Pathfindax.Test.Tests.Collections
{
	public class Array2DTests
	{
		[Theory, MemberData(nameof(Array2DTestCases), MemberType = typeof(Array2DTests))]
		public void Array2D_2DimensionalAccess_CorrectValue(Array2D<int> array2D, Point2 pointToCheck)
		{
			var value = array2D[pointToCheck.X, pointToCheck.Y];
			Assert.Equal(value, array2D.Array[value]);
		}

		[Fact]
		public void Array2D_1DimensionalAccess_CorrectValue()
		{
			var array2D = new Array2D<int>(4, 4);
			for (int i = 0; i < array2D.Length; i++)
			{
				array2D[i] = i;
			}

			for (int i = 0; i < array2D.Array.Length; i++)
			{
				Assert.Equal(i, array2D.Array[i]); 
			}
		}

        [Fact]
        public void Array2D_Enumerate()
		{
			var array2D = new Array2D<int>(4, 4);
			for (int i = 0; i < array2D.Length; i++)
			{
				array2D[i] = i;
			}

			var enumeratedArray = array2D.ToArray();
            Assert.Equal(array2D.Array, enumeratedArray);
		}
       
        [Theory, MemberData(nameof(Array2DOutOfBoundsTestCases), MemberType = typeof(Array2DTests))]
		public void Array2D_2DimensionalAccess_OutOfBounds(Array2D<int> array2D, Point2 pointToCheck)
		{
            Assert.Throws<IndexOutOfRangeException>(() =>
            {
                var unused = array2D[pointToCheck.X, pointToCheck.Y];
            });
		}

		public static IEnumerable<object[]> Array2DOutOfBoundsTestCases
		{
			get
			{
				yield return GenerateArray2DTestCase(3, 5, new Point2(1, 5));
				yield return GenerateArray2DTestCase(3, 5, new Point2(3, 2));
			}
		}

		public static IEnumerable<object[]> Array2DTestCases
		{
			get
			{
				yield return GenerateArray2DTestCase(3, 5, new Point2(1, 3));
				yield return GenerateArray2DTestCase(9, 5, new Point2(3, 2));
			}
		}

		private static object[] GenerateArray2DTestCase(int width, int height, Point2 pointToCheck)
		{
			var array = new int[width * height];
			for (var i = 0; i < array.Length; i++)
			{
				array[i] = i;
			}
			return new object[] { new Array2D<int>(array, width, height), pointToCheck };
		}
	}
}