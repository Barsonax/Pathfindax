using System;
using System.Collections;
using System.Collections.Generic;
using Duality.Drawing;
using Duality.Editor;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Class for visualizing a <see cref="IPathfindNodeNetwork{TNode}"/>
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(FlowFieldPathfinderComponent))]
	public class NodeNetworkVisualizer : Component, ICmpRenderer
	{
		/// <summary>
		/// 
		/// </summary>
		public int Thread { get; set; }

		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; set; } = PathfindaxCollisionCategory.Cat1;

		/// <summary>
		/// The draw size of the nodes.
		/// </summary>
		public float NodeSize { get; set; } = 10f;

		/// <summary>
		/// If true the nodenetwork will be drawn.
		/// </summary>
		public bool Visualize { get; set; } = true;

		/// <summary>
		/// Only needed in order to implement <see cref="ICmpRenderer"/>
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (!Visualize) return;
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			var pathfinder = GameObj.GetComponent<IDualityPathfinderComponent>();
			if (pathfinder?.Pathfinder?.DefinitionNodeNetwork != null)
			{
				if (Thread > pathfinder.Pathfinder.PathfindNodeNetworks.Count) return;
				var canvas = new Canvas(device) { State = { ZOffset = -8 } };
				var definitionNodes = pathfinder.Pathfinder.DefinitionNodeNetwork.NodeArray;
				var transformer = pathfinder.Pathfinder.DefinitionNodeNetwork.Transformer;
				var network = pathfinder.Pathfinder.PathfindNodeNetworks[Thread].GetCollisionLayerNetwork(CollisionCategory);
				switch (network)
				{
					case AstarNode[] astarNodeNetwork:
						DrawAstarNodes(canvas, astarNodeNetwork, definitionNodes, transformer);
						break;
					case DijkstraNode[] dijkstraNodeNetwork:
						DrawDijkstraNodes(canvas, dijkstraNodeNetwork, definitionNodes, transformer);
						break;
						default:
							throw new NotImplementedException($"No visualization implemented for {network}");
				}
			}
		}

		private void DrawAstarNodes(Canvas canvas, AstarNode[] network, DefinitionNode[] definitionNodes, Transformer transformer)
		{
			for (var index = 0; index < network.Length; index++)
			{
				ref var astarNode = ref network[index];
				ref var definitionNode = ref definitionNodes[index];
				var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
				DrawNode(canvas, nodeWorldPosition);
				DrawNodeText(canvas, nodeWorldPosition, astarNode.Clearance);
				DrawNodeConnections(canvas, transformer, nodeWorldPosition, definitionNode.Connections, definitionNodes);
			}
		}

		private void DrawDijkstraNodes(Canvas canvas, DijkstraNode[] network, DefinitionNode[] definitionNodes, Transformer transformer)
		{
			for (var index = 0; index < network.Length; index++)
			{
				ref var dijkstraNode = ref network[index];
				ref var definitionNode = ref definitionNodes[index];
				var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
				DrawNode(canvas, nodeWorldPosition);
				DrawNodeText(canvas, nodeWorldPosition, dijkstraNode.Clearance);
				DrawNodeConnections(canvas, transformer, nodeWorldPosition, definitionNode.Connections, definitionNodes);
			}
		}

		private void DrawNode(Canvas canvas, Vector2 nodeWorldPosition)
		{
			canvas.State.ColorTint = ColorRgba.LightGrey;
			canvas.FillCircle(nodeWorldPosition.X, nodeWorldPosition.Y, NodeSize);
		}

		private void DrawNodeText(Canvas canvas, Vector2 nodeWorldPosition, float clearance)
		{
			if (!float.IsNaN(clearance))
			{
				canvas.State.ColorTint = ColorRgba.Black;
				canvas.DrawText(clearance.ToString(), nodeWorldPosition.X, nodeWorldPosition.Y, -1f, Alignment.Center);
			}
		}

		private void DrawNodeConnections(Canvas canvas, Transformer transformer, Vector2 nodeWorldPosition, NodeConnection[] nodeConnections, DefinitionNode[] definitionNodes)
		{
			canvas.State.ColorTint = new ColorRgba(199, 21, 133);
			foreach (var connection in nodeConnections)
			{
				ref var toNode = ref definitionNodes[connection.To];
				var vector = (transformer.ToWorld(toNode.Position) - nodeWorldPosition) * 0.5f; //Times 0.5f so we can see the connections in both directions.
				canvas.DrawDashLine(nodeWorldPosition.X, nodeWorldPosition.Y, nodeWorldPosition.X + vector.X, nodeWorldPosition.Y + vector.Y);
			}
		}
	}
}
