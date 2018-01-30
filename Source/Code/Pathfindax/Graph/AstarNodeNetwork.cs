using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	/// <summary>
	/// A node network for <see cref="AstarNode"/>s
	/// </summary>
	public class AstarNodeNetwork : IPathfindNodeNetwork<AstarNode>
	{
		public IDefinitionNodeNetwork DefinitionNodeNetwork { get; }
		IDefinitionNodeNetwork IPathfindNodeNetwork.DefinitionNodeNetwork => DefinitionNodeNetwork;

		private readonly Dictionary<PathfindaxCollisionCategory, AstarNode[]> _nodeNetworks = new Dictionary<PathfindaxCollisionCategory, AstarNode[]>();
		private readonly IPathfindNodeGenerator<AstarNode>[] _pathfindNodeGenerators;

		/// <summary>
		/// Creates a new instance of the <see cref="AstarNodeNetwork"/>
		/// </summary>
		/// <param name="definitionNodeNetwork"></param>
		/// <param name="pathfindNodeGenerators"></param>
		public AstarNodeNetwork(IDefinitionNodeNetwork definitionNodeNetwork, params IPathfindNodeGenerator<AstarNode>[] pathfindNodeGenerators)
		{
			DefinitionNodeNetwork = definitionNodeNetwork;
			_pathfindNodeGenerators = pathfindNodeGenerators;
		}

		object IPathfindNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory) => GetCollisionLayerNetwork(collisionCategory);
		public AstarNode[] GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			if (!_nodeNetworks.TryGetValue(collisionCategory, out var pathfindingNetwork))
			{
				var watch = Stopwatch.StartNew();
				pathfindingNetwork = GenerateNodeNetwork(DefinitionNodeNetwork);
				foreach (var pathfindNodeGenerator in _pathfindNodeGenerators)
				{
					pathfindNodeGenerator.Generate(pathfindingNetwork, collisionCategory);
				}
				Debug.WriteLine($"Generated pathfind nodenetwork in {watch.ElapsedMilliseconds} ms");
				_nodeNetworks.Add(collisionCategory, pathfindingNetwork);
			}
			return pathfindingNetwork;
		}

		private static AstarNode[] GenerateNodeNetwork(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			var nodeNetwork = new AstarNode[definitionNodeNetwork.NodeCount];
			for (var i = 0; i < definitionNodeNetwork.NodeCount; i++)
			{
				nodeNetwork[i] = new AstarNode { Parent = -1, Clearance = float.MaxValue };
			}
			return nodeNetwork;
		}
	}
}
