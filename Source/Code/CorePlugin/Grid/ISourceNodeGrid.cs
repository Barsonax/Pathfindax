using System.Collections.Generic;
using Duality;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid
	{
		int Height { get; }
		int Width { get; }

		List<INode> GetNeighbours(INode node);
		INode NodeFromWorldPoint(Vector2 worldPosition);
	}
}