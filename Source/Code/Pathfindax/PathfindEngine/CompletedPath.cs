using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
    public class CompletedPath : ICompletedPath
    {
        public Vector2[] Path { get; }
        public DefinitionNode[] NodePath { get; }

        public CompletedPath(DefinitionNode[] nodePath, Vector2 offset = default(Vector2))
        {
            NodePath = nodePath;
            Path = new Vector2[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                Path[i] = NodePath[i].Position + offset;
            }
        }
    }
}
