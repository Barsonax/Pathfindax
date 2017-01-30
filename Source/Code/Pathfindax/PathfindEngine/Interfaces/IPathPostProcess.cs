using System.Collections.Generic;
using Pathfindax.Grid;

namespace Pathfindax.PathfindEngine
{
    public interface IPathPostProcess
    {
        IList<IGridNode> Process(IList<IGridNode> path);
    }
}