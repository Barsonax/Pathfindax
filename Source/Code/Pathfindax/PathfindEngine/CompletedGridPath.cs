using Duality;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.PathfindEngine
{
    public class CompletedGridPath : ICompletedPath
    {
        public Vector2[] Path { get; }
        public DefinitionNode[] NodePath { get; }

        public CompletedGridPath(DefinitionNode[] nodePath, float nodeSize, int agentSize)
        {
            NodePath = nodePath;
            var offset = GridClearanceHelper.GridNodeOffset(agentSize, nodeSize);
            Path = new Vector2[NodePath.Length];
            for (int i = 0; i < NodePath.Length; i++)
            {
                var nodePosition = NodePath[i].Position;
                Path[i] = new Vector2(nodePosition.X + offset, nodePosition.Y + offset);
            }
        }
    }
}
