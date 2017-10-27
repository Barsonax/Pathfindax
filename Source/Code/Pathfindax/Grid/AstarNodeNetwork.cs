using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// A node network for <see cref="AstarNode"/>s
	/// </summary>
	public class AstarNodeNetwork : INodeNetwork<AstarNode>
	{
		public int NodeCount => Nodes.Count;
		public AstarNode this[int index] => Nodes[index];
		private List<AstarNode> Nodes { get;  }

		public AstarNodeNetwork(IEnumerable<SourceNode> sourceNodeNetwork)
		{
			Nodes = new List<AstarNode>();
			var sourceNodeDictionary = new Dictionary<SourceNode, AstarNode>(); //Later used to generate the connections
			foreach (var node in sourceNodeNetwork)
			{
				var astarNode = new AstarNode(node);
				Nodes.Add(astarNode);
				sourceNodeDictionary.Add(node, astarNode);
			}
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		public AstarNode GetNode(Vector2 worldPosition)
		{			
			return Nodes.OrderBy(x => MathF.Distance(worldPosition.X, worldPosition.Y, x.WorldPosition.X, x.WorldPosition.Y)).FirstOrDefault();
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
