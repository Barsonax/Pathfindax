using Duality.Drawing;
using Duality.Editor;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

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

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (!Visualize) return;
			var pathProvider = GameObj.GetComponent<IPathProvider>();
			if (pathProvider?.Path != null)
			{
				switch (pathProvider.Path)
				{
					case CompletedPath completedPath:
						var canvas = new Canvas(device);
						canvas.State.ZOffset = -10;

						for (var index = 0; index < completedPath.NodePath.Length; index++)
						{
							if (index == 0) canvas.State.ColorTint = ColorRgba.Green;
							else if (index == completedPath.NodePath.Length - 1) canvas.State.ColorTint = ColorRgba.Blue;
							else canvas.State.ColorTint = ColorRgba.Red;
							var waypoint = completedPath[index];
							canvas.FillCircle(waypoint.X, waypoint.Y, 10f);
						}

						canvas.State.ColorTint = ColorRgba.Red;
						for (var i = 1; i < completedPath.NodePath.Length; i++)
						{
							var from = completedPath[i - 1];
							var to = completedPath[i];
							canvas.DrawLine(from.X, from.Y, 0, to.X, to.Y, 0);
						}
						break;
				}
			}
		}
	}
}
