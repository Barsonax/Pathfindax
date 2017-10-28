using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;
using SnowyPeak.Duality.Plugin.Frozen.Procedural;
using INode = SnowyPeak.Duality.Plugin.Frozen.Procedural.INode;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class SourceNodeNetworkProviderMockupComponent : Component, ISourceNodeNetworkProvider<ISourceNodeNetwork<SourceNode>>
	{
		public ISourceNodeNetwork<SourceNode> GenerateGrid2D()
		{
			const int width = 1000;
			const int height = 1000;
			var random = new Random();
			var dictionary = new Dictionary<DelaunayNode, SourceNode>();
			var nodeNetwork = new SourceNodeNetwork(new Vector2(0, 0));
			for (var i = 0; i < 100; i++)
			{
				var node = new SourceNode(new Vector2(random.Next(0, width), random.Next(0, height)), i);
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
				var connections = new List<SourceNode>();
				foreach (var link in graphLink)
				{				
					var to = dictionary[link.To];
					connections.Add(to);
				}

				for (var i = 0; i < connections.Count; i++)
				{
					var to = connections[i];
					from.Connections.Add(new NodeConnection(to.ArrayIndex));
					to.Connections.Add(new NodeConnection(from.ArrayIndex));
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
