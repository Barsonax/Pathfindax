﻿using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
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
			var width = 1000;
			var height = 1000;
			var random = new Random();
			var dictionary = new Dictionary<DelaunayNode, SourceNode>();
			var nodeNetwork = new SourceNodeNetwork();
			for (var i = 0; i < 100; i++)
			{
				var node = new SourceNode(new PositionF(random.Next(0, width), random.Next(0, height)), i);
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

				foreach (var to in connections)
				{
					from.Connections.Add(new NodeConnection<SourceNode>(to));
					to.Connections.Add(new NodeConnection<SourceNode>(from));
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
