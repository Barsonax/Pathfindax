using System.Linq;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AStarGrid : NodeGridBase<IAStarGridNode>
	{
		public AStarGrid(INodeGrid<IGridNode> source)
		{
			Offset = source.Offset;
			NodeSize = source.NodeSize;
			NodeArray = new Array2D<IAStarGridNode>(source.NodeArray.Width, source.NodeArray.Height);
			WorldSize = source.WorldSize;
			for (int y = 0; y < source.NodeArray.Height; y++)
			{
				for (int x = 0; x < source.NodeArray.Width; x++)
				{
					var sourceNode = source.NodeArray[x, y];
					var aStarNode = new AstarGridNode(sourceNode);
					NodeArray[x, y] = aStarNode;
				}
			}

			for (int y = 0; y < source.NodeArray.Height; y++)
			{
				for (int x = 0; x < source.NodeArray.Width; x++)
				{
					var aStarNode = NodeArray[x, y];
					var sourceNode = source.NodeArray[x, y];
					aStarNode.Connections = new NodeConnection<IAStarGridNode>[sourceNode.Connections.Length];
					for (int index = 0; index < sourceNode.Connections.Length; index++)
					{
						var sourceNodeNeighbour = sourceNode.Connections[index];
						aStarNode.Connections[index] = new NodeConnection<IAStarGridNode>(NodeArray[sourceNodeNeighbour.To.GridX, sourceNodeNeighbour.To.GridY], sourceNodeNeighbour.CollisionCategory);
					}
				}
			}
		}
	}
}
