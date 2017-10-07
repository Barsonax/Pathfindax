using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine.Interfaces
{
    public interface ICompletedPath
    {
        PositionF[] Path { get; }
        ISourceNode[] NodePath { get; }
    }
}
