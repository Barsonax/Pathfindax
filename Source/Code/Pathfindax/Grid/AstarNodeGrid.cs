using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AstarNodeGrid : INodeGrid<AstarNode>
	{
		private Dictionary<PathfindaxCollisionCategory, Array2D<AstarNode>> NodeGrids { get; } = new Dictionary<PathfindaxCollisionCategory, Array2D<AstarNode>>();
		public SourceNodeGrid SourceNodeGrid { get; }
		ISourceNodeGrid INodeGrid.SourceNodeGrid => SourceNodeGrid;
		ISourceNodeGrid<ISourceNode> INodeGrid<AstarNode>.SourceNodeGrid => SourceNodeGrid;
		ISourceNodeNetwork INodeNetwork.SourceNodeNetwork => SourceNodeGrid;
		ISourceNodeNetwork<ISourceNode> INodeNetwork<AstarNode>.SourceNodeNetwork => SourceNodeGrid;
		/// <summary>
		/// Creates a new instance of the <see cref="AstarNodeGrid"/>
		/// </summary>
		/// <param name="sourceNodeGrid"></param>
		public AstarNodeGrid(SourceNodeGrid sourceNodeGrid)
		{
			SourceNodeGrid = sourceNodeGrid;
		}

		public Array2D<AstarNode> GetPathfindingGrid(PathfindaxCollisionCategory collisionCategory)
		{
			if (!NodeGrids.TryGetValue(collisionCategory, out var nodegrid))
			{
				var sourceNodeGrid = SourceNodeGrid.GetSourceGrid(collisionCategory);
				nodegrid = GenerateNodeGrid(sourceNodeGrid);
				NodeGrids.Add(collisionCategory, nodegrid);
			}
			return nodegrid;
		}
		IReadOnlyArray2D<AstarNode> INodeGrid<AstarNode>.GetPathfindingGrid(PathfindaxCollisionCategory collisionCategory) => GetPathfindingGrid(collisionCategory);
		public AstarNode[] GetPathfindingNetwork(PathfindaxCollisionCategory collisionCategory) => throw new System.NotImplementedException();

		private Array2D<AstarNode> GenerateNodeGrid(Array2D<SourceNode> sourceNodeGrid)
		{
			var nodeGrid = new Array2D<AstarNode>(sourceNodeGrid.Width, sourceNodeGrid.Height);
			for (var i = 0; i < sourceNodeGrid.Length; i++)
			{
				nodeGrid[i] = new AstarNode(sourceNodeGrid[i]);
			}
			return nodeGrid;
		}
	}
}
