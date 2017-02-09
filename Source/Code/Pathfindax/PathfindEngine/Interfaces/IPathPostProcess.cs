using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
    public interface IPathPostProcess
    {
        IList<PositionF> Process(IList<PositionF> path, PathRequest pathRequest);
    }
}