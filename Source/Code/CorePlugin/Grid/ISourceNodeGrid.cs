using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid
	{
		Array2D<INode> Grid { get; }
		Vector2 GridWorldSize { get; }
		int Height { get; }
		int Width { get; }

		List<INode> GetNeighbours(INode node);
		INode NodeFromWorldPoint(Vector2 worldPosition);
	}
}