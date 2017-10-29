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
		public AstarNodeGrid(ISourceNodeGrid<SourceGridNode> sourceNodeGrid) : base(sourceNodeGrid)
		{
			NodeArray = new Array2D<AstarGridNode>(sourceNodeGrid.NodeArray.Width, sourceNodeGrid.NodeArray.Height);
			for (var i = 0; i < NodeArray.Length; i++)
			{
				NodeArray[i] = new AstarGridNode(sourceNodeGrid.NodeArray[i]);
			}
		}
    }
}
