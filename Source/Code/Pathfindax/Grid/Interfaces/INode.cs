using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INode
	{
		int GridX { get; }
		int GridY { get; }
		bool Walkable { get; set; }
		PositionF WorldPosition { get; }
	}
}
