using System.Collections.Generic;
using System.Linq;
using Duality;
using NUnit.Framework;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Paths
{
	[TestFixture]
	public class NodePathTests
	{
		[Test, TestCaseSource(typeof(PathTestCases), nameof(PathTestCases.PathLengthTestCases))]
		public void GetPathLength(DefinitionNode[] definitionNodes, int[] path, float expectedPathLength)
		{
			var nodePath = new WaypointPath(definitionNodes, path, new Transformer(new Vector2(1f, 1f)));
			var pathLength = nodePath.GetPathLength();
			Assert.AreEqual(expectedPathLength, pathLength, 0.001f);
		}

		[Test, TestCaseSource(typeof(PathTestCases), nameof(PathTestCases.PathLengthTestCases))]
		public void NextWaypoint(DefinitionNode[] definitionNodes, int[] path, float expectedPathLength)
		{
			var nodePath = new WaypointPath(definitionNodes, path, new Transformer(new Vector2(1f, 1f)));
			var waypoints = new List<Vector2>();
			var position = definitionNodes[path[0]].Position;
			do
			{
				var heading = nodePath.GetHeading(position);
				position += heading;
				waypoints.Add(position);
				
			} while (!nodePath.NextWaypoint());

			Assert.AreEqual(path.Length, waypoints.Count);
			CollectionAssert.AreEqual(path.Select(i => definitionNodes[i].Position), waypoints);
		}
	}
}
