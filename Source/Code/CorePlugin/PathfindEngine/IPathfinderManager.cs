using System.Threading.Tasks;

namespace Pathfindax.PathfindEngine
{
	public interface IPathfinderManager
	{
		Task<PathRequest> RequestPath(PathRequest pathRequest);
	}
}