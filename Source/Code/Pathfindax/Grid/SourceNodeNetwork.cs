using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public class SourceNodeNetwork : ISourceNodeNetwork<SourceNode>
	{
		public int NodeCount => Nodes.Count;
		public SourceNode this[int index] => Nodes[index];
		public List<SourceNode> Nodes { get; }
		public Vector2 Offset { get; protected set; }

		public SourceNodeNetwork(Vector2 offset)
		{
			Nodes = new List<SourceNode>();
			Offset = offset;
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <returns></returns>
		public SourceNode GetNode(float worldX, float worldY)
		{			
			return Nodes.OrderBy(x => MathF.Distance(x.WorldPosition.X, x.WorldPosition.Y, worldX, worldY)).FirstOrDefault(); //TODO this does not scale well with more nodes in the network.
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
