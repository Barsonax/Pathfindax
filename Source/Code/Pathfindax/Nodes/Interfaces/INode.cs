using Duality;

namespace Pathfindax.Nodes
{
	public interface INode
	{
		/// <summary>
		/// The absolute world position
		/// </summary>
		Vector2 WorldPosition { get; }
	}
}