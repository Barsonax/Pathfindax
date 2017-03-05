using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class SourceNodeNetwork : ISourceNodeNetwork<SourceNode>
	{
		public int NodeCount => Nodes.Count;
		public SourceNode this[int index] => Nodes[index];
		public List<SourceNode> Nodes { get; private set; }

		public SourceNodeNetwork()
		{
			Nodes = new List<SourceNode>();
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		public SourceNode GetNode(PositionF worldPosition)
		{
			return Nodes.OrderBy(x => worldPosition.Distance(x.WorldPosition)).FirstOrDefault(); //TODO this does not scale well with more nodes in the network.
		}

		public IEnumerator<SourceNode> GetEnumerator()
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
