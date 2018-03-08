using Duality;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
    public interface IPath
    {
		Transformer Transformer { get; }
	    Vector2 GetHeading(Vector3 currentPosition);

		Vector2 GetHeading(Vector2 currentPosition);
    }
}
