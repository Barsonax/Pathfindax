using Duality;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public interface IVectorField : IPath
	{
		Vector2 this[int i] { get; }
		Vector2 this[int x, int y] { get; }
		new GridTransformer Transformer { get; }
	}
}
