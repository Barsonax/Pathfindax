using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class LookupArrayTests
	{
		[Test, TestCaseSource(typeof(LookupArrayTests), nameof(Array2DOutOfBoundsTestCases))]
		public void Contains(LookupArray lookupArray, int[] indexesToAdd)
		{
			for (int j = 0; j < 256; j++)
			{
				foreach (var i in indexesToAdd)
				{
					lookupArray.Occupy(i);
				}

				foreach (var i in indexesToAdd)
				{
					Assert.IsTrue(lookupArray.Contains(i));
				}
				lookupArray.Clear();
				for (int i = 0; i < lookupArray.Capacity; i++)
				{
					Assert.IsFalse(lookupArray.Contains(i));
				}
			}
		}

		public static IEnumerable Array2DOutOfBoundsTestCases
		{
			get
			{
				yield return GenerateLookupArrayTestCase(15, new[] { 1, 5 });
				yield return GenerateLookupArrayTestCase(15, new[] { 10, 8, 9 });
				yield return GenerateLookupArrayTestCase(15, new[] { 14, 12 });
				yield return GenerateLookupArrayTestCase(15, new[] { 13, 5 });
				yield return GenerateLookupArrayTestCase(15, new[] { 0, 5 });
				yield return GenerateLookupArrayTestCase(3, new[] { 1, 2 });
			}
		}

		private static TestCaseData GenerateLookupArrayTestCase(int size, int[] indexesToAdd)
		{
			return new TestCaseData(new LookupArray(size), indexesToAdd).SetName($"Size: {size}, Indexes: {string.Join(", ", indexesToAdd)}");
		}
	}
}
