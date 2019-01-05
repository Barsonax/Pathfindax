using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Utils;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// A component to draw a path.
	/// </summary>
	[RequiredComponent(typeof(IPathProvider))]
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	public class PathVisualizer : Component, ICmpRenderer, ICmpInitializable
	{
		/// <summary>
		/// If true the <see cref="IPathProvider.Path"/> will be drawn.
		/// </summary>
		public bool Visualize { get; set; } = true;

		[DontSerialize]
		private PathVisualization _pathVisualization;

		void ICmpRenderer.GetCullingInfo(out CullingInfo info)
		{
			info = new CullingInfo
			{
				Visibility = VisibilityFlag.AllGroups
			};
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (!Visualize) return;
			var pathProvider = GameObj.GetComponent<IPathProvider>();
			if (pathProvider?.Path != null)
			{
				_pathVisualization.SetPath(pathProvider.Path);
				_pathVisualization.Draw(new DualityRenderer(device, -5));
			}
		}

		void ICmpInitializable.OnActivate()
		{
			_pathVisualization = new PathVisualization();
		}

		void ICmpInitializable.OnDeactivate() { }
	}
}