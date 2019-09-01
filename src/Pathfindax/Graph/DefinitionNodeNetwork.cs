using Duality;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	/// <summary>
	/// Class that holds the definition data for the nodenetwork.
	/// The nodenetwork will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeNetwork : IDefinitionNodeNetwork
	{
		public DefinitionNode[] NodeArray { get; private set; } = new DefinitionNode[0];
		public int NodeCount => NodeArray.Length;
		public Transformer Transformer { get; }

		public DefinitionNodeNetwork(Vector2 scale, Vector2 offset = default)
		{
			Transformer = new Transformer(scale, offset);
		}

		public int AddNode(Vector2 position, float movementPenalty = 1f)
		{
			var index = NodeArray.Length;
			var definitionNode = new DefinitionNode(position, movementPenalty);
			NodeArray = NodeArray.Append(definitionNode);
			return index;
		}

		/// <summary>
		/// Returns the node closest to this position
		/// </summary>
		/// <returns></returns>
		public ref DefinitionNode GetNode(float worldX, float worldY)
		{
			var index = GetNodeIndex(worldX, worldY);
			
			return ref NodeArray[index]; //TODO this does not scale well with more nodes in the network.
		}

		public int GetNodeIndex(float worldX, float worldY)
		{
			var local = Transformer.ToLocal(worldX, worldY);
			var minDistance = float.MaxValue;
			var index = -1;
			//TODO this does not scale well with more nodes in the network.
			for (int i = 0; i < NodeArray.Length; i++)
			{
				ref var node = ref NodeArray[i];
				var calculatedDistance = MathF.Distance(node.Position.X, node.Position.Y, local.X, worldY);
				if (calculatedDistance < minDistance)
				{
					index = i;
					minDistance = calculatedDistance;
				}
			}
			return index; 
		}
	}
}
