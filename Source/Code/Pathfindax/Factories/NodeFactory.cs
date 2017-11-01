using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
    public static class NodeFactory
    {
        public static void CreateConnection(DefinitionNode from, DefinitionNode to)
        {
            from.Connections.Add(new NodeConnection(to.Index));
        }
    }
}
