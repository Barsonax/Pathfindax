using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid
	{
		int Height { get; }
		int Width { get; }
		PositionF WorldSize { get; }
		List<INode> GetNeighbours(INode node);
		INode NodeFromWorldPoint(PositionF worldPosition);
	}
}