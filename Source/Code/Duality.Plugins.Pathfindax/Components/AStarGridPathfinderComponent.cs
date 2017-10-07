using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	public class AStarGridPathfinderComponent : PathfinderComponentBase<ISourceNodeGrid<ISourceGridNode>>, ICmpRenderer
	{
		/// <inheritdoc />
		public override ISourceNodeGrid<ISourceGridNode> SourceNodeNetwork { get; protected set; }

		/// <summary>
		/// Not used
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		/// <summary>
		/// If <c>True</c> the <see cref="ISourceNodeGrid{TNode}"/> will be drawn to the scene using a <see cref="NodeGridVisualizer"/>
		/// </summary>
		public bool ShowNodeGrid { get; set; }

		[EditorHintFlags(MemberFlags.Visible)]
		private NodeGridVisualizer NodeGridVisualizer { get; set; }

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (ShowNodeGrid) NodeGridVisualizer?.Draw(device);
		}

		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceProvider = GameObj.GetComponent<ISourceNodeNetworkProvider<ISourceNodeGrid<ISourceGridNode>>>();
				if (sourceProvider != null)
				{
					SourceNodeNetwork = sourceProvider.GenerateGrid2D();
					var nodeGrid = new AstarNodeGrid(SourceNodeNetwork);
					var algorithm = new AStarGridAlgorithm();
					NodeGridVisualizer = new NodeGridVisualizer(SourceNodeNetwork);                  
					MultithreadedPathfinder = PathfinderFactory.Create(new[] { nodeGrid }, algorithm);
                    MultithreadedPathfinder.Start();
				}
			}
		}
	}
}
