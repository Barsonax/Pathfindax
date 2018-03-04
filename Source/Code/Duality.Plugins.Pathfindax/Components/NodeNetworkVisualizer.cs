using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Utils;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Class for visualizing a <see cref="IPathfindNodeNetwork{TNode}"/>
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IDualityPathfinderComponent))]
	public class NodeNetworkVisualizer : Component, ICmpRenderer, ICmpInitializable
	{
		private PathfindaxCollisionCategory _collisionCategory = PathfindaxCollisionCategory.Cat1;
		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory
		{
			get => _collisionCategory;
			set
			{
				_collisionCategory = value;
				_pathfindNodeNetworkVisualizer.CollisionCategory = value;
			}
		}

		/// <summary>
		/// If true the nodenetwork will be drawn.
		/// </summary>
		public bool Visualize { get; set; } = true;

		/// <summary>
		/// Only needed in order to implement <see cref="ICmpRenderer"/>
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		[DontSerialize]
		private PathfindNodeNetworkVisualizer _pathfindNodeNetworkVisualizer;

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
			_pathfindNodeNetworkVisualizer.Draw(new DualityRenderer(device, -5));
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var pathfinder = GameObj.GetComponent<IDualityPathfinderComponent>();
				if (pathfinder?.Pathfinder?.DefinitionNodeNetwork != null)
				{
					_pathfindNodeNetworkVisualizer = new PathfindNodeNetworkVisualizer(pathfinder.Pathfinder.DefinitionNodeNetwork.NodeArray, pathfinder.Pathfinder.DefinitionNodeNetwork.Transformer, pathfinder.Pathfinder.PathfindNodeNetworks[0]) { CollisionCategory = CollisionCategory };
				}
			}
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}