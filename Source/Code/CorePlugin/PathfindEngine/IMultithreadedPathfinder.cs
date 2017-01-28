using System.Threading.Tasks;

namespace Pathfindax.PathfindEngine
{
	public interface IMultithreadedPathfinder
	{
		void RequestPath(PathRequest pathRequest);
		void Start();
		void Stop();
	}
}