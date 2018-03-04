using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Paths;
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

		/// <summary>
		/// Only needed in order to implement <see cref="ICmpRenderer"/>
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		private PathLayer _pathLayer;
		private VectorLayer _vectorLayer;

		private global::Pathfindax.Visualization.PathVisualizer _pathVisualizer;

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (!Visualize) return;
			var pathProvider = GameObj.GetComponent<IPathProvider>();
			if (pathProvider?.Path != null)
			{
				_pathVisualizer.SetPath(pathProvider.Path);
				_pathVisualizer.Draw(new DualityRenderer(device, -5));
			}
		}

		public void OnInit(InitContext context)
		{
			_pathVisualizer = new global::Pathfindax.Visualization.PathVisualizer();
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}