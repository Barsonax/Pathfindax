using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class SourceNodeNetwork : INodeNetwork<Node>
	{
		public int NodeCount => Nodes.Count;

		private List<Node> Nodes { get; }

		public SourceNodeNetwork()
		{
			Nodes = new List<Node>();
		}

		public void AddNode(Node node)
		{
			Nodes.Add(node);
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		public Node GetNode(PositionF worldPosition)
		{
			return Nodes.OrderBy(x => worldPosition.Distance(x.WorldPosition)).FirstOrDefault(); //TODO this does not scale well with more nodes in the network.
		}

		public IEnumerator<Node> GetEnumerator()
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
