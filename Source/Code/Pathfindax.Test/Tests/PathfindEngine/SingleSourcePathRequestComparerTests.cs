using Xunit;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	
	public class SingleSourcePathRequestComparerTests
	{
        [Theory, MemberData(nameof(PathfindEngineTestCases.SingleSourcePathRequestComparerTestCases), MemberType = typeof(PathfindEngineTestCases))]
		public void Compare(IPathRequest request1, IPathRequest request2, bool expected)
		{
			var comparer = new SingleSourcePathRequestComparer();
			Assert.Equal(expected, comparer.Equals(request1, request2));
		}
	}
}
