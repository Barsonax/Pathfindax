using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
    public class CompletedPath : ICompletedPath
    {
        public Vector2[] Path { get; }
        public ISourceNode[] NodePath { get; }

        public CompletedPath(ISourceNode[] nodePath)
        {
            NodePath = nodePath;
            Path = new Vector2[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                Path[i] = NodePath[i].WorldPosition;
            }
        }
    }
}
