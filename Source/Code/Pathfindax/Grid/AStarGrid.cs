using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AStarGrid : INodeGrid<IAStarGridNode>
	{
		private readonly ISourceNodeGrid _source;
		private readonly Array2D<IAStarGridNode> _grid;

		public int NodeCount => _grid.Width * _grid.Height;
		public PositionF WorldSize => _source.WorldSize;

		public AStarGrid(ISourceNodeGrid source)
		{
			_source = source;
			_grid = new Array2D<IAStarGridNode>(_source.Width, _source.Height);
		}

		public IList<IAStarGridNode> GetNeighbours(IAStarGridNode gridNode)
		{
			if (gridNode.Neighbours == null || gridNode.Neighbours.Count == 0)
			{
				gridNode.Neighbours = new List<IAStarGridNode>();
				var sourceNeighbours = _source.GetNeighbours(gridNode.Source);
				foreach (var sourceNeighbour in sourceNeighbours)
				{
					var neighbour = _grid[sourceNeighbour.GridX, sourceNeighbour.GridY];
					if (neighbour == null)
					{
						neighbour = new IaStarGridNode(sourceNeighbour);
						_grid[sourceNeighbour.GridX, sourceNeighbour.GridY] = neighbour;
					}
					gridNode.Neighbours.Add(neighbour);
				}
			}
			return gridNode.Neighbours;
		}

		public IAStarGridNode GetNode(PositionF worldPosition)
		{
			var sourceNode = _source.NodeFromWorldPoint(worldPosition);
			return GetNode(sourceNode);
		}

		public IAStarGridNode GetNode(IGridNode sourceGridNode)
		{
			return _grid[sourceGridNode.GridX, sourceGridNode.GridY] ?? (_grid[sourceGridNode.GridX, sourceGridNode.GridY] = new IaStarGridNode(sourceGridNode));
		}
	}
}
