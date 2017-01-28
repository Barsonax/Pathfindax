using System.Threading.Tasks;

namespace Pathfindax.PathfindEngine
{
	public interface IMultithreadedPathfinder
	{
		Task<PathRequest> RequestPath(PathRequest pathRequest);
		void Start();
		void Stop();
	}
}