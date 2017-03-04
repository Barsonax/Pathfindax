using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AstarSourceNodeGrid : SourceNodeGridBase<AstarGridNode>
	{
		public ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid;

		/// <summary>
		/// Creates a new instance of the <see cref="AstarSourceNodeGrid"/>
		/// </summary>
		/// <param name="sourceSource"></param>
		public AstarSourceNodeGrid(ISourceNodeGrid<ISourceGridNode> sourceSource)
		{
			SourceSourceNodeGrid = sourceSource;
			Offset = sourceSource.Offset;
			NodeSize = sourceSource.NodeSize;
			NodeArray = new Array2D<AstarGridNode>(sourceSource.NodeArray.Width, sourceSource.NodeArray.Height);
			WorldSize = sourceSource.WorldSize;
			for (int y = 0; y < sourceSource.NodeArray.Height; y++)
			{
				for (int x = 0; x < sourceSource.NodeArray.Width; x++)
				{
					var sourceNode = sourceSource.NodeArray[x, y];
					var aStarNode = new AstarGridNode(sourceNode);
					NodeArray[x, y] = aStarNode;
				}
			}

			for (int y = 0; y < sourceSource.NodeArray.Height; y++)
			{
				for (int x = 0; x < sourceSource.NodeArray.Width; x++)
				{
					var aStarNode = NodeArray[x, y];
					var sourceNode = sourceSource.NodeArray[x, y];
					aStarNode.Connections = new NodeConnection<AstarGridNode>[sourceNode.Connections.Length];
					for (int index = 0; index < sourceNode.Connections.Length; index++)
					{
						var sourceNodeNeighbour = sourceNode.Connections[index];
						aStarNode.Connections[index] = new NodeConnection<AstarGridNode>(NodeArray[sourceNodeNeighbour.To.GridX, sourceNodeNeighbour.To.GridY], sourceNodeNeighbour.CollisionCategory);
					}
				}
			}
		}
	}
}
