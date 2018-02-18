using System.Collections.Generic;
using Duality;
using NUnit.Framework;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	[TestFixture]
	public class DefinitionNodeNetworkTests
	{
		[Test]
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
				Assert.AreEqual(position, node.Position);
			}
		}
	}
}
