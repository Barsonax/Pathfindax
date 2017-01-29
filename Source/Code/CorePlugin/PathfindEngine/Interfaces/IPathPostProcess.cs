using System.Collections.Generic;
using Pathfindax.Grid;

namespace Pathfindax.PathfindEngine
{
    public interface IPathPostProcess
    {
        IList<INode> Process(IList<INode> path);
    }
}