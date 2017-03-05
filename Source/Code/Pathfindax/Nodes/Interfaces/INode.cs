using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public interface INode
	{
		/// <summary>
		/// The absolute world position
		/// </summary>
		PositionF WorldPosition { get; }
	}
}