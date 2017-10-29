using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
    public static class NodeFactory
    {
        public static void CreateConnection<T>(T from, SourceNode to)
            where T : SourceNode
        {
            from.Connections.Add(new NodeConnection(to));
        }
    }
}
