using System.Collections;
using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public abstract class NodeNetworkBase<TNode> : INodeNetwork<TNode> 
		where TNode : INode
	{
		public TNode this[int index] => Nodes[index];
		protected List<TNode> Nodes { get; }

		public ISourceNodeNetwork<ISourceNode> SourceNodeNetwork { get; }
		ISourceNodeNetwork INodeNetwork.SourceNodeNetwork => SourceNodeNetwork;
		ISourceNodeNetwork<ISourceNode> INodeNetwork<TNode>.SourceNodeNetwork => SourceNodeNetwork;

		protected NodeNetworkBase(ISourceNodeNetwork<ISourceNode> sourceNodeNetwork)
		{
			SourceNodeNetwork = sourceNodeNetwork;
			Nodes = new List<TNode>();
		}

		public IEnumerator<TNode> GetEnumerator()
		{
			foreach (var node in Nodes)
			{
				yield return node;
			}
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}
	}
}
