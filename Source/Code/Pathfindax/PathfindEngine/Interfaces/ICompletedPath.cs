using Duality;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
    public interface ICompletedPath
    {
	    Vector2[] Path { get; }
	    DefinitionNode[] NodePath { get; }
    }
}
