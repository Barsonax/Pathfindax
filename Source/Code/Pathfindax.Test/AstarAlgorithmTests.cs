using System.Collections;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Test
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmCases), nameof(AstarAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(float x1, float y1, float x2, float y2)
		{
			var nodeNetwork = new SourceNodeNetwork();
			var node1 = new SourceNode(new PositionF(0f, 0f), 0);
			var node2 = new SourceNode(new PositionF(5f, 8f), 1);
			var node3 = new SourceNode(new PositionF(15f, 13f), 2);
			var node4 = new SourceNode(new PositionF(2f, 3f), 3);
			var node5 = new SourceNode(new PositionF(6f, 25f), 4);

			node1.Connections.Add(new NodeConnection<SourceNode>(node2));
			node1.Connections.Add(new NodeConnection<SourceNode>(node4));

			node2.Connections.Add(new NodeConnection<SourceNode>(node3));
			node2.Connections.Add(new NodeConnection<SourceNode>(node1));

			node3.Connections.Add(new NodeConnection<SourceNode>(node5));
			node3.Connections.Add(new NodeConnection<SourceNode>(node2));

			node4.Connections.Add(new NodeConnection<SourceNode>(node1));
			node4.Connections.Add(new NodeConnection<SourceNode>(node2));

			node5.Connections.Add(new NodeConnection<SourceNode>(node3));
			nodeNetwork.Nodes.Add(node1);
			nodeNetwork.Nodes.Add(node2);
			nodeNetwork.Nodes.Add(node3);
			nodeNetwork.Nodes.Add(node4);
			nodeNetwork.Nodes.Add(node5);

			var astarNodeNetwork = new AstarNodeNetwork(nodeNetwork);
			var aStarAlgorithm = new AStarAlgorithm();
			var start = nodeNetwork.GetNode(new PositionF(x1, y1));
			var end = nodeNetwork.GetNode(new PositionF(x2, y2));

			var pathRequest = new PathRequest(null, start, end);
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
