using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
    public interface IPathPostProcess
    {
        IList<INode> Process(IList<INode> path);
    }
}