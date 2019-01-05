using System.Collections.Generic;
using System.Linq;
using Duality;
using Xunit;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Paths
{
	
	public class NodePathTests
	{
        [Theory, MemberData(nameof(PathTestCases.PathLengthTestCases), MemberType = typeof(PathTestCases))]
        public void GetPathLength(DefinitionNode[] definitionNodes, int[] path, float expectedPathLength)
		{
			var nodePath = new WaypointPath(definitionNodes, path, new Transformer(new Vector2(1f, 1f)));
			var pathLength = nodePath.GetPathLength();
			Assert.Equal(expectedPathLength, pathLength, 3);
		}

        [Theory, MemberData(nameof(PathTestCases.PathLengthTestCases), MemberType = typeof(PathTestCases))]
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

			Assert.Equal(path.Length, waypoints.Count);
            Assert.Equal(path.Select(i => definitionNodes[i].Position), waypoints);
		}
	}
}
