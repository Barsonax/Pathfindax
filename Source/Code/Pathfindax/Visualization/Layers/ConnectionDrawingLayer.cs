using Duality;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class ConnectionDrawingLayer : IDrawingLayer
	{
		public Transformer Transformer { get; }
		public DefinitionNode[] DefinitionNodes { get; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public ColorRgba Color { get; set; } = ColorRgba.White;

		public ConnectionDrawingLayer(DefinitionNode[] definitionNodes, Transformer transformer)
		{
			DefinitionNodes = definitionNodes;
			Transformer = transformer;
		}

		public void Draw(IRenderer renderer)
		{
			renderer.SetColor(Color);
			for (var i = 0; i < DefinitionNodes.Length; i++)
			{
				var definitionNode = DefinitionNodes[i];
				var nodeWorldPosition = Transformer.ToWorld(definitionNode.Position);
				DrawNodeConnections(renderer, Transformer, nodeWorldPosition, definitionNode.Connections,DefinitionNodes, CollisionCategory);
			}
		}

		private void DrawNodeConnections(IRenderer renderer, Transformer transformer, Vector2 nodeWorldPosition, NodeConnection[] nodeConnections, DefinitionNode[] definitionNodes, PathfindaxCollisionCategory collisionCategory)
		{
			foreach (var connection in nodeConnections)
			{
				if ((connection.CollisionCategory & collisionCategory) != 0) continue;
				ref var toNode = ref definitionNodes[connection.To];
				var vector = (transformer.ToWorld(toNode.Position) - nodeWorldPosition) * 0.5f; //Times 0.5f so we can see the connections in both directions.
				renderer.DrawLine(nodeWorldPosition, nodeWorldPosition + vector);
			}
		}
	}
}