using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Factories;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmCases), nameof(AstarAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(float x1, float y1, float x2, float y2)
		{
			var nodeNetwork = new SourceNodeNetwork(new Vector2(0, 0));
			var node1 = nodeNetwork.AddNode(new Vector2(0f, 0f));
			var node2 = nodeNetwork.AddNode(new Vector2(5f, 8f));
			var node3 = nodeNetwork.AddNode(new Vector2(15f, 13f));
			var node4 = nodeNetwork.AddNode(new Vector2(2f, 3f));
			var node5 = nodeNetwork.AddNode(new Vector2(6f, 25f));

			NodeFactory.CreateConnection(node1, node2);
			NodeFactory.CreateConnection(node1, node4);

			NodeFactory.CreateConnection(node2, node3);
			NodeFactory.CreateConnection(node2, node1);

			NodeFactory.CreateConnection(node3, node5);
			NodeFactory.CreateConnection(node3, node2);

			NodeFactory.CreateConnection(node4, node1);
			NodeFactory.CreateConnection(node4, node2);

			NodeFactory.CreateConnection(node5, node3);

			var astarNodeNetwork = new AstarNodeNetwork(nodeNetwork);
			var aStarAlgorithm = new AStarAlgorithm();
			var start = nodeNetwork.GetNode(x1, y1);
			var end = nodeNetwork.GetNode(x2, y2);

			var pathRequest = new PathRequest(start, end);
			var path = aStarAlgorithm.FindPath(astarNodeNetwork, pathRequest);
			Assert.AreEqual(path.Count > 0, true);
		}

		public class AstarAlgorithmCases
		{
			public static IEnumerable FindPathTestCases
			{
				get { yield return new TestCaseData(0f, 0f, 5f, 18f); }
			}
		}
	}
}
