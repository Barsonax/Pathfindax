using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;
using SnowyPeak.Duality.Plugin.Frozen.Procedural;
using INode = SnowyPeak.Duality.Plugin.Frozen.Procedural.INode;
using Node = Pathfindax.Nodes.Node;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class SourceNodeNetworkProviderMockupComponent : Component, ISourceNodeNetworkProvider<INodeNetwork<Node>>
	{
		public INodeNetwork<Node> GenerateGrid2D()
		{
			var width = 1000;
			var height = 1000;
			var random = new Random();
			var dictionary = new Dictionary<DelaunayNode, Node>();
			var nodeNetwork = new SourceNodeNetwork();
			for (int i = 0; i < 100; i++)
			{
				var node = new Node(new PositionF(random.Next(0, width), random.Next(0, height)));
				var defaultNode = new DelaunayNode(new Vector2(node.WorldPosition.X, node.WorldPosition.Y));
				dictionary.Add(defaultNode, node);
				nodeNetwork.Nodes.Add(node);
			}

			var graph = new Graph<DelaunayNode>();
			graph.Nodes.AddRange(dictionary.Keys);
			graph.Triangulate();
			
			foreach (var graphLink in graph.Links.GroupBy(x => x.From))
			{
				var from = dictionary[graphLink.Key];
				var connections = new List<Node>();
				foreach (var link in graphLink)
				{				
					var to = dictionary[link.To];
					connections.Add(to);
				}

				foreach (var connection in connections)
				{
					from.Connections.Add(new NodeConnection<Node>(connection));
					connection.Connections.Add(new NodeConnection<Node>(from));
				}
			}
			return nodeNetwork;
		}
	}

	public class DelaunayNode : INode
	{
		public DelaunayNode() { }
		public DelaunayNode(Vector2 vector2)
		{
			Position = vector2;
		}

		public Vector2 Position { get; private set; }
	}
}
