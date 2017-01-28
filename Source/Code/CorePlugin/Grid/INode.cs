using Duality;

namespace Pathfindax.Grid
{
	public interface INode
	{
		int GridX { get; }
		int GridY { get; }
		bool Walkable { get; set; }
		Vector2 WorldPosition { get; }
	}
}
