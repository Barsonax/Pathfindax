using Duality;

namespace Pathfindax.Paths
{
	public interface IVectorField : IPath
	{
		Vector2 this[int i] { get; }
		Vector2 this[int x, int y] { get; }
		int Width { get; }
		int Height { get; }
	}
}
