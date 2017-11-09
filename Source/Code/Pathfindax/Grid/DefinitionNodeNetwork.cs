using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds the definition data for the nodenetwork.
	/// The nodenetwork will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeNetwork : IDefinitionNodeNetwork
	{
		public DefinitionNode this[int index] => DefinitionNodes[index];
		public List<DefinitionNode> DefinitionNodes { get; } = new List<DefinitionNode>();
		public int NodeCount => DefinitionNodes.Count;
		public Vector2 Offset { get; protected set; }

		public DefinitionNodeNetwork(Vector2 offset)
		{
			Offset = offset;
		}

		public DefinitionNode AddNode(Vector2 position, float movementPenalty = 1f)
		{
			var definitionNode = new DefinitionNode(DefinitionNodes.Count, position, movementPenalty);
			DefinitionNodes.Add(definitionNode);
			return definitionNode;
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <returns></returns>
		public DefinitionNode GetNode(float worldX, float worldY)
		{			
			return DefinitionNodes.OrderBy(x => MathF.Distance(x.Position.X, x.Position.Y, worldX, worldY)).FirstOrDefault(); //TODO this does not scale well with more nodes in the network.
		}
	}
}
