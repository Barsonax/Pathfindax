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
				_pathfindNodeNetworkVisualization.CollisionCategory = value;
			}
		}

		/// <summary>
		/// If true the nodenetwork will be drawn.
		/// </summary>
		public bool Visualize { get; set; } = true;

		[DontSerialize]
		private PathfindNodeNetworkVisualization _pathfindNodeNetworkVisualization;

		void ICmpRenderer.GetCullingInfo(out CullingInfo info)
		{
			info = new CullingInfo
			{
				Visibility = VisibilityFlag.AllGroups
			};
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (!Visualize) return;
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			_pathfindNodeNetworkVisualization.Draw(new DualityRenderer(device, -5));
		}

		void ICmpInitializable.OnActivate()
		{
			var pathfinder = GameObj.GetComponent<IDualityPathfinderComponent>();
			if (pathfinder?.Pathfinder?.DefinitionNodeNetwork != null)
			{
				_pathfindNodeNetworkVisualization = new PathfindNodeNetworkVisualization(pathfinder.Pathfinder.DefinitionNodeNetwork.NodeArray, pathfinder.Pathfinder.DefinitionNodeNetwork.Transformer, pathfinder.Pathfinder.PathfindNodeNetworks[0]) { CollisionCategory = CollisionCategory };
			}
		}

		void ICmpInitializable.OnDeactivate() { }
	}
}