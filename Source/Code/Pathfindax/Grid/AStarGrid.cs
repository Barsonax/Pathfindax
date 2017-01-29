using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AStarGrid : INodeGrid<IAStarNode>
	{
		private readonly ISourceNodeGrid _source;
		private readonly Array2D<IAStarNode> _grid;

		public int MaxSize => _grid.Width * _grid.Height;

		public AStarGrid(ISourceNodeGrid source)
		{
			_source = source;
			_grid = new Array2D<IAStarNode>(_source.Width, _source.Height);
		}

		public List<IAStarNode> GetNeighbours(IAStarNode node)
		{
			if (node.Neighbours == null || node.Neighbours.Count == 0)
			{
				node.Neighbours = new List<IAStarNode>();
				var sourceNeighbours = _source.GetNeighbours(node.Source);
				foreach (var sourceNeighbour in sourceNeighbours)
				{
					var neighbour = _grid[sourceNeighbour.GridX, sourceNeighbour.GridY];
					if (neighbour == null)
					{
						neighbour = new AStarNode(sourceNeighbour);
						_grid[sourceNeighbour.GridX, sourceNeighbour.GridY] = neighbour;
					}
					node.Neighbours.Add(neighbour);
				}
			}
			return node.Neighbours;
		}

		public IAStarNode GetNode(PositionF worldPosition)
		{
			var sourceNode = _source.NodeFromWorldPoint(worldPosition);
			return GetNode(sourceNode);
		}

		public IAStarNode GetNode(INode sourceNode)
		{
			return _grid[sourceNode.GridX, sourceNode.GridY] ?? (_grid[sourceNode.GridX, sourceNode.GridY] = new AStarNode(sourceNode));
		}
	}
}
