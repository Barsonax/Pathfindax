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
			var node1 = new Node(new PositionF(0f, 0f));
			var node2 = new Node(new PositionF(5f, 8f));
			var node3 = new Node(new PositionF(15f, 13f));
			var node4 = new Node(new PositionF(2f, 3f));
			var node5 = new Node(new PositionF(6f, 25f));

			node1.Connections = new NodeConnection<Node>[2];
			node1.Connections[0] = new NodeConnection<Node>(node2);
			node1.Connections[1] = new NodeConnection<Node>(node4);

			node2.Connections = new NodeConnection<Node>[2];
			node2.Connections[0] = new NodeConnection<Node>(node3);
			node2.Connections[1] = new NodeConnection<Node>(node1);

			node3.Connections = new NodeConnection<Node>[2];
			node3.Connections[0] = new NodeConnection<Node>(node5);
			node3.Connections[1] = new NodeConnection<Node>(node2);

			node4.Connections = new NodeConnection<Node>[2];
			node4.Connections[0] = new NodeConnection<Node>(node1);
			node4.Connections[1] = new NodeConnection<Node>(node2);

			node5.Connections = new NodeConnection<Node>[1];
			node5.Connections[0] = new NodeConnection<Node>(node3);
			nodeNetwork.AddNode(node1);
			nodeNetwork.AddNode(node2);
			nodeNetwork.AddNode(node3);
			nodeNetwork.AddNode(node4);
			nodeNetwork.AddNode(node5);

			var astarNodeNetwork = new AstarNodeNetwork(nodeNetwork);
			var aStarAlgorithm = new AStarAlgorithm();
			var pathRequest = new PathRequest(null, new PositionF(x1, y1), new PositionF(x2, y2));
			var path = aStarAlgorithm.FindPath(astarNodeNetwork, pathRequest);
			Assert.AreEqual(path.Count > 0, true);
		}

		public class AstarAlgorithmCases
		{
			public static IEnumerable FindPathTestCases
			{
				get { yield return new TestCaseData(0f,0f,5f,18f); }
			}
		}
	}
}
