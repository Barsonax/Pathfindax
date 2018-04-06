using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Editor;
using Pathfindax.Graph;
using Pathfindax.Utils;
using SnowyPeak.Duality.Plugin.Frozen.Procedural;
using INode = SnowyPeak.Duality.Plugin.Frozen.Procedural.INode;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class DefinitionNodeNetworkProviderMockupComponent : Component, IDefinitionNodeNetworkProvider<IDefinitionNodeNetwork>
	{
		public IDefinitionNodeNetwork GenerateGrid2D()
		{
			const int width = 1000;
			const int height = 1000;
			var random = new Random();
			var dictionary = new Dictionary<DelaunayNode, int>();
			var nodeNetwork = new DefinitionNodeNetwork(new Vector2(1, 1));
			for (var i = 0; i < 100; i++)
			{				
				var nodeIndex = nodeNetwork.AddNode(new Vector2(random.Next(0, width), random.Next(0, height)));
				ref var node = ref nodeNetwork.NodeArray[nodeIndex];
				var defaultNode = new DelaunayNode(new Vector2(node.Position.X, node.Position.Y));
				dictionary.Add(defaultNode, nodeIndex);
			}

			var graph = new Graph<DelaunayNode>();
			graph.Nodes.AddRange(dictionary.Keys);
			graph.Triangulate();
			
			foreach (var graphLink in graph.Links.GroupBy(x => x.From))
			{
				var from = dictionary[graphLink.Key];
				ref var fromNode = ref nodeNetwork.NodeArray[from];
				var connections = new List<int>();
				foreach (var link in graphLink)
				{				
					var to = dictionary[link.To];
					connections.Add(to);
				}

				for (var i = 0; i < connections.Count; i++)
				{
					ref var toNode = ref nodeNetwork.NodeArray[connections[i]];
					fromNode.AddConnection(connections[i]);
					toNode.AddConnection(from);
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

		public Vector2 Position { get; }
	}
}
