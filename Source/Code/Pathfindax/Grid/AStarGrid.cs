using Pathfindax.Collections;
using Pathfindax.Nodes;
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
			_grid = new Array2D<IAStarGridNode>(_source.NodeArray.Width, _source.NodeArray.Height);
			for (int y = 0; y < _source.NodeArray.Height; y++)
			{
				for (int x = 0; x < _source.NodeArray.Width; x++)
				{
					var sourceNode = _source.NodeArray[x, y];
					var aStarNode = new AstarGridNode(sourceNode);
					_grid[x, y] = aStarNode;
				}
			}

			for (int y = 0; y < _source.NodeArray.Height; y++)
			{
				for (int x = 0; x < _source.NodeArray.Width; x++)
				{
					var aStarNode = _grid[x, y];
					var sourceNode = _source.NodeArray[x, y];
					foreach (var sourceNodeNeighbour in sourceNode.Neighbours)
					{
						aStarNode.Neighbours.Add(_grid[sourceNodeNeighbour.GridX, sourceNodeNeighbour.GridY]);
					}
				}
			}
		}


		public IAStarGridNode GetNode(PositionF worldPosition)
		{
			var sourceNode = _source.NodeFromWorldPoint(worldPosition);
			return GetNode(sourceNode);
		}

		private IAStarGridNode GetNode(IGridNodeBase sourceGridNode)
		{
			return _grid[sourceGridNode.GridX, sourceGridNode.GridY];
		}
	}
}
