using Duality;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.PathfindEngine
{
    public class CompletedGridPath : ICompletedPath
    {
        public Vector2[] Path { get; }
        public ISourceNode[] NodePath { get; }

        public CompletedGridPath(ISourceNode[] nodePath, float nodeSize, int agentSize)
        {
            NodePath = nodePath;
            var offset = GridClearanceHelper.GridNodeOffset(agentSize, nodeSize);
            Path = new Vector2[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                var nodePosition = NodePath[i].WorldPosition;
                Path[i] = new Vector2(nodePosition.X + offset, nodePosition.Y + offset);
            }
        }
    }
}
