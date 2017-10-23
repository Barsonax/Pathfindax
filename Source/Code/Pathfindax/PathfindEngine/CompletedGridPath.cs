using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Pathfindax.PathfindEngine
{
    public class CompletedGridPath : ICompletedPath
    {
        public PositionF[] Path { get; }
        public ISourceNode[] NodePath { get; }

        public CompletedGridPath(ISourceNode[] nodePath, float nodeSize, int agentSize)
        {
            NodePath = nodePath;
            var offset = GridClearanceHelper.GridNodeOffset(agentSize, nodeSize);
            Path = new PositionF[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                var nodePosition = NodePath[i].WorldPosition;
                Path[i] = new PositionF(nodePosition.X + offset, nodePosition.Y + offset);
            }
        }
    }
}
