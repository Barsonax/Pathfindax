using Duality.Drawing;
using Duality.Editor;
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
	public class PathVisualizer : Component, ICmpRenderer
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
				switch (pathProvider.Path)
				{
					case NodePath completedPath:
						_pathLayer.Path = completedPath.Path;
						break;
					case FlowField flowField:
						for (int i = 0; i < flowField.FlowArray.Length; i++)
						{
							_vectorLayer.Vectors[i] = flowField[i];
						}
						break;
					case PotentialField potentialField:
						for (int i = 0; i < potentialField.PotentialArray.Length; i++)
						{
							_vectorLayer.Vectors[i] = potentialField[i];
						}
						break;
					case AggregratedPotentialField aggregratedPotentialField:
						for (int i = 0; i < aggregratedPotentialField.NodeCount; i++)
						{
							_vectorLayer.Vectors[i] = aggregratedPotentialField[i];
						}
						break;
				}
			}
		}
	}
}