using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// A node network for <see cref="AstarNode"/>s
	/// </summary>
	public class AstarNodeNetwork : IPathfindNodeNetwork<AstarNode>
	{
		private Dictionary<PathfindaxCollisionCategory, AstarNode[]> NodeNetworks { get; } = new Dictionary<PathfindaxCollisionCategory, AstarNode[]>();
		public ISourceNodeNetwork<SourceNode> SourceNodeNetwork { get; }
		ISourceNodeNetwork IPathfindNodeNetwork.SourceNodeNetwork => SourceNodeNetwork;

		/// <summary>
		/// Creates a new instance of the <see cref="AstarNodeNetwork"/>
		/// </summary>
		/// <param name="sourceNodeNetwork"></param>
		public AstarNodeNetwork(ISourceNodeNetwork<SourceNode> sourceNodeNetwork)
		{
			SourceNodeNetwork = sourceNodeNetwork;
		}

		public AstarNode[] GetPathfindingNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			if (!NodeNetworks.TryGetValue(collisionCategory, out var nodegrid))
			{
				
				var sourceNodeNetwork = SourceNodeNetwork.GetSourceNetwork(collisionCategory);
				var watch = Stopwatch.StartNew();
				nodegrid = GenerateNodeGrid(sourceNodeNetwork);
				Debug.WriteLine($"Generated pathfind nodenetwork in {watch.ElapsedMilliseconds} ms");
				NodeNetworks.Add(collisionCategory, nodegrid);
			}
			return nodegrid;
		}

		private AstarNode[] GenerateNodeGrid(SourceNode[] sourceNodeGrid)
		{
			var nodeNetwork = new AstarNode[sourceNodeGrid.Length];
			for (var i = 0; i < sourceNodeGrid.Length; i++)
			{
				nodeNetwork[i] = new AstarNode(sourceNodeGrid[i]);
			}
			return nodeNetwork;
		}
	}
}
