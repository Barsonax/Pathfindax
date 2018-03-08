using NUnit.Framework;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	[TestFixture]
	public class SingleSourcePathRequestComparerTests
	{
		[Test, TestCaseSource(typeof(PathfindEngineTestCases), nameof(PathfindEngineTestCases.SingleSourcePathRequestComparerTestCases))]
		public void Compare(IPathRequest request1, IPathRequest request2, bool expected)
		{
			var comparer = new SingleSourcePathRequestComparer();
			Assert.AreEqual(expected, comparer.Equals(request1, request2));
		}
	}
}
