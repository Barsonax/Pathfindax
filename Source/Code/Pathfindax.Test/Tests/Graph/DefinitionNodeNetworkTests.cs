using System.Collections.Generic;
using Duality;
using Xunit;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	
	public class DefinitionNodeNetworkTests
	{
		[Fact]
		public void GetNode()
		{
			var nodeNetwork = new DefinitionNodeNetwork(new Vector2(1, 1));
			var positions = new List<Vector2> { new Vector2(0, 0), new Vector2(1, 2), new Vector2(8, 13) };
			foreach (var position in positions)
			{
				nodeNetwork.AddNode(position);
			}

			foreach (var position in positions)
			{
				var node = nodeNetwork.GetNode(position.X, position.Y);
				Assert.Equal(position, node.Position);
			}
		}
	}
}
