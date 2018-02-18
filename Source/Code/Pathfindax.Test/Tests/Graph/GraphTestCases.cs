using System.Collections;
using Duality;
using NUnit.Framework;

namespace Pathfindax.Test.Tests.Graph
{
	public class GraphTestCases
	{
		public static IEnumerable TransformTestCases
		{
			get
			{
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, 8), new Vector2(0, 8));
				yield return new TestCaseData(new Vector2(2, 2), new Vector2(0, 0), new Vector2(0, 8), new Vector2(0, 4));
				yield return new TestCaseData(new Vector2(2, 2), new Vector2(0, 0), new Vector2(15, 12), new Vector2(7.5f, 6));
				yield return new TestCaseData(new Vector2(2, 1), new Vector2(30, 10), new Vector2(0, 8), new Vector2(-15, -2));
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(30, 10), new Vector2(0, 8), new Vector2(-30, -2));
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(13, 16), new Vector2(0, 8), new Vector2(-13, -8));
			}
		}

		public static IEnumerable GridTransformTestCases
		{
			get
			{
				yield return new TestCaseData(new Point2(4, 4), new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, 2), new Point2(0, 2));
				yield return new TestCaseData(new Point2(4, 4), new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, 5), new Point2(0, 3));
				yield return new TestCaseData(new Point2(4, 4), new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, -8), new Point2(0, 0));
				yield return new TestCaseData(new Point2(8, 8), new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, 5), new Point2(0, 5));
				yield return new TestCaseData(new Point2(8, 8), new Vector2(2, 2), new Vector2(0, 0), new Vector2(14, 12), new Point2(7, 6));
			}
		}
	}
}
