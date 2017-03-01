using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// A node network for <see cref="AstarNode"/>s
	/// </summary>
	public class AstarNodeNetwork : INodeNetwork<AstarNode>
	{
		public int NodeCount => Nodes.Count;
		private List<AstarNode> Nodes { get;  }

		public AstarNodeNetwork(IEnumerable<Node> sourceNodeNetwork)
		{
			Nodes = new List<AstarNode>();
			var sourceNodeDictionary = new Dictionary<Node, AstarNode>(); //Later used to generate the connections
			foreach (var node in sourceNodeNetwork)
			{
				var astarNode = new AstarNode(node);
				Nodes.Add(astarNode);
				sourceNodeDictionary.Add(node, astarNode);
			}

			foreach (var astarNode in Nodes)
			{
				if (astarNode.SourceNode.Connections == null)
				{
					astarNode.Connections = new NodeConnection<AstarNode>[0];
					continue;
				}
				astarNode.Connections = new NodeConnection<AstarNode>[astarNode.SourceNode.Connections.Count];
				for (int index = 0; index < astarNode.SourceNode.Connections.Count; index++)
				{
					var sourceNodeConnection = astarNode.SourceNode.Connections[index];
					astarNode.Connections[index] = new NodeConnection<AstarNode>(sourceNodeDictionary[sourceNodeConnection.To], sourceNodeConnection.CollisionCategory);
				}
			}	
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		public AstarNode GetNode(PositionF worldPosition)
		{
			return Nodes.OrderBy(x => worldPosition.Distance(x.WorldPosition)).FirstOrDefault();
		}

		public IEnumerator<AstarNode> GetEnumerator()
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
