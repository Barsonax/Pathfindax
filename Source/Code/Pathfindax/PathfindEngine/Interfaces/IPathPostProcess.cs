using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
    public interface IPathPostProcess
    {
        IList<ISourceNode> Process(IList<ISourceNode> path, PathRequest pathRequest);
    }
}