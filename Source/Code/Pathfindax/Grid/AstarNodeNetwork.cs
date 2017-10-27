using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// A node network for <see cref="AstarNode"/>s
	/// </summary>
	public class AstarNodeNetwork : NodeNetworkBase<AstarNode>
	{
		public AstarNodeNetwork(ISourceNodeNetwork<SourceNode> sourceNodeNetwork) : base(sourceNodeNetwork)
		{
			foreach (var node in sourceNodeNetwork)
			{
				Nodes.Add(new AstarNode(node));
			}
		}
	}
}
