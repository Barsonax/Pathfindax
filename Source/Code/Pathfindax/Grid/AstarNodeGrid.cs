using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Contains data specific for the A* algorithm.
	/// Do not share this between threads.
	/// </summary>
	public class AstarNodeGrid : NodeGridBase<AstarGridNode>
	{
		/// <summary>
		/// Creates a new instance of the <see cref="AstarNodeGrid"/>
		/// </summary>
		/// <param name="sourceNodeGrid"></param>
		public AstarNodeGrid(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid) : base(sourceNodeGrid)
		{
			var nodeArray = new Array2D<AstarGridNode>(sourceNodeGrid.NodeArray.Width, sourceNodeGrid.NodeArray.Height);
			for (var y = 0; y < sourceNodeGrid.NodeArray.Height; y++)
			{
				for (var x = 0; x < sourceNodeGrid.NodeArray.Width; x++)
				{
					var sourceNode = sourceNodeGrid.NodeArray[x, y];
					var aStarNode = new AstarGridNode(sourceNode);
					nodeArray[x, y] = aStarNode;
				}
			}
			NodeArray = nodeArray;
		}
    }
}
