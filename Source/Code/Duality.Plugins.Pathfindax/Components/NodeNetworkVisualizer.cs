﻿using System.Collections.Generic;
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
				var pathfindNetwork = pathfinder.Pathfinder.PathfindNodeNetworks[Thread];
				Draw(device, pathfindNetwork.GetCollisionLayerNetwork(CollisionCategory), pathfinder.Pathfinder.DefinitionNodeNetwork);
			}
		}

		private void Draw(IDrawDevice device, IReadOnlyList<ICollisionLayerNode> network, IDefinitionNodeNetwork definitionNodeNetwork)
		{
			var canvas = new Canvas(device, new CanvasBuffer());
			canvas.State.ZOffset = -8;
			for (int i = 0; i < network.Count; i++)
			{
				var node = network[i];
				canvas.State.ColorTint = ColorRgba.LightGrey;
				var nodePosition = node.DefinitionNode.Position;
				canvas.FillCircle(nodePosition.X, nodePosition.Y, NodeSize);
				canvas.State.ColorTint = ColorRgba.VeryLightGrey;
				if (node.DefinitionNode.Connections != null)
				{
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var connection in node.DefinitionNode.Connections)
					{
						var toNode = NodePointer.Dereference(connection.To, definitionNodeNetwork);
						var vector = (toNode.Position - nodePosition) * 0.5f; //Times 0.5f so we can see the connections in both directions.
						canvas.DrawDashLine(nodePosition.X, nodePosition.Y, nodePosition.X + vector.X, nodePosition.Y + vector.Y);
					}
					if (!float.IsNaN(node.Clearance))
					{
						canvas.State.ColorTint = ColorRgba.Black;
						canvas.DrawText(node.Clearance.ToString(), nodePosition.X, nodePosition.Y, -1f, Alignment.Center);
					}
				}
			}
		}
	}
}
