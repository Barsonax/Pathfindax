using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
    public static class NodeFactory
    {
        public static void CreateConnection<T>(T from, SourceNode to)
            where T : SourceNode
        {
            from.Connections.Add(CreateConnection(to));
        }

        public static NodeConnection<T> CreateConnection<T>(T to)
            where T : SourceNode
        {
            return new NodeConnection<T>(to);
        }
    }
}
