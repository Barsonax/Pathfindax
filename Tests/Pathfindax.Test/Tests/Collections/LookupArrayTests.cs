using System.Linq;
using Xunit;
using Pathfindax.Collections;
using System.Collections.Generic;

namespace Pathfindax.Test.Tests.Collections
{
    public class LookupArrayTests
    {
        [Theory, MemberData(nameof(LookupArrayTestCases))]
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
                    Assert.True(lookupArray.Contains(i));
                }
                lookupArray.Clear();
                for (int i = 0; i < lookupArray.Capacity; i++)
                {
                    Assert.False(lookupArray.Contains(i));
                }
            }
        }

        [Theory, MemberData(nameof(LookupArrayTestCases))]
        public void Enumerate(LookupArray lookupArray, int[] indexesToAdd)
        {
            foreach (var i in indexesToAdd)
            {
                lookupArray.Occupy(i);
            }

            var lookupArrayIndexes = lookupArray.ToArray();
            Assert.Equal(lookupArray, lookupArrayIndexes);
        }

        public static IEnumerable<object[]> LookupArrayTestCases
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

        private static object[] GenerateLookupArrayTestCase(int size, int[] indexesToAdd)
        {
            return new object[] { new LookupArray(size), indexesToAdd };
        }
    }
}
