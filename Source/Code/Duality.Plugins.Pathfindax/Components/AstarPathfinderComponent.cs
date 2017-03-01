﻿using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	public class AstarPathfinderComponent : PathfinderComponentBase, ICmpRenderer
	{
		/// <inheritdoc />
		public override INodeNetwork<INode> NodeNetwork { get; protected set; }
		private INodeNetwork<Node> SourceNodeGrid { get; set; }

		/// <summary>
		/// Not used
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		/// <summary>
		/// If <c>True</c> the <see cref="INodeGrid{TNode}"/> will be drawn to the scene using a <see cref="NodeGridVisualizer"/>
		/// </summary>
		public bool ShowNodeGrid { get; set; }

		[EditorHintFlags(MemberFlags.Visible)]
		private NodeNetworkVisualizer NodeNetworkVisualizer { get; set; }

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (ShowNodeGrid) NodeNetworkVisualizer?.Draw(device);
		}

		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceProvider = GameObj.GetComponent<ISourceNodeNetworkProvider<INodeNetwork<Node>>>();
				if (sourceProvider != null)
				{
					SourceNodeGrid = sourceProvider.GenerateGrid2D();
					var astarNodeNetwork = new AstarNodeNetwork(SourceNodeGrid);
					NodeNetwork = astarNodeNetwork;
					var algorithm = new AStarAlgorithm();
					NodeNetworkVisualizer = new NodeNetworkVisualizer(SourceNodeGrid, 5f);
					MultithreadedPathfinder = new MultithreadedPathfinder<INodeNetwork<AstarNode>>(new[] { astarNodeNetwork }, algorithm);
					MultithreadedPathfinder.Start();
				}
			}
		}
	}
}
