using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
    public class CompletedPath : ICompletedPath
    {
        public PositionF[] Path { get; }
        public ISourceNode[] NodePath { get; }

        public CompletedPath(ISourceNode[] nodePath)
        {
            NodePath = nodePath;
            Path = new PositionF[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                Path[i] = NodePath[i].WorldPosition;
            }
        }
    }
}
