using System.Collections;
using System.Linq;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class LookupArrayTests
	{
		[Test, TestCaseSource(typeof(LookupArrayTests), nameof(LookupArrayTestCases))]
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

		[Test, TestCaseSource(typeof(LookupArrayTests), nameof(LookupArrayTestCases))]
		public void Enumerate(LookupArray lookupArray, int[] indexesToAdd)
		{
			foreach (var i in indexesToAdd)
			{
				lookupArray.Occupy(i);
			}

			var lookupArrayIndexes = lookupArray.ToArray();
			CollectionAssert.AreEquivalent(lookupArray, lookupArrayIndexes);
		}

		public static IEnumerable LookupArrayTestCases
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
