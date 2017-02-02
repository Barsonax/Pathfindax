using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface ISourceNodeNetworkProvider<out TNodeNetwork, TNode>
		where TNode : INode
		where TNodeNetwork : INodeNetwork<TNode>
	{
		TNodeNetwork[] GenerateGrid2D();
	}
}
