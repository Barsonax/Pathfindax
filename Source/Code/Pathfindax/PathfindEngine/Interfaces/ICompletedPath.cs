using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
    public interface ICompletedPath
    {
        PositionF[] Path { get; }
        ISourceNode[] NodePath { get; }
    }
}
