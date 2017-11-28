using Duality.Drawing;
using Duality.Editor;
using Pathfindax.Paths;
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
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (!Visualize) return;
			var pathProvider = GameObj.GetComponent<IPathProvider>();
			if (pathProvider?.Path != null)
			{
				var canvas = new Canvas(device);
				canvas.State.ZOffset = -8;
				switch (pathProvider.Path)
				{
					case NodePath completedPath:
						for (var index = 0; index < completedPath.Path.Length; index++)
						{
							if (index == 0) canvas.State.ColorTint = ColorRgba.Green;
							else if (index == completedPath.Path.Length - 1) canvas.State.ColorTint = ColorRgba.Blue;
							else canvas.State.ColorTint = ColorRgba.Red;
							var waypoint = completedPath[index];
							canvas.FillCircle(waypoint.X, waypoint.Y, 10f);
						}

						canvas.State.ColorTint = ColorRgba.Red;
						for (var i = 1; i < completedPath.Path.Length; i++)
						{
							var from = completedPath[i - 1];
							var to = completedPath[i];
							canvas.DrawLine(from.X, from.Y, 0, to.X, to.Y, 0);
						}
						break;
					case FlowField flowField:
						for (var i = 0; i < flowField.FlowArray.Length; i++)
						{							
							var nodePosition = flowField.GridTransformer.ToWorld(i);
							canvas.FillCircle(nodePosition.X, nodePosition.Y, 5f);
							var flowVector = flowField[i];
							var nodeSize = flowField.GridTransformer.Scale;
							canvas.DrawLine(nodePosition.X, nodePosition.Y, nodePosition.X + flowVector.X * nodeSize.X * 0.5f, nodePosition.Y + flowVector.Y * nodeSize.Y * 0.5f);
						}
						break;
					case PotentialField potentialField:
						for (var i = 0; i < potentialField.PotentialArray.Length; i++)
						{
							var nodePosition = potentialField.GridTransformer.ToWorld(i);
							canvas.FillCircle(nodePosition.X, nodePosition.Y, 5f);
							var flowVector = potentialField[i];
							var nodeSize = potentialField.GridTransformer.Scale;
							canvas.DrawLine(nodePosition.X, nodePosition.Y, nodePosition.X + flowVector.X * nodeSize.X * 0.5f, nodePosition.Y + flowVector.Y * nodeSize.Y * 0.5f);
						}
						break;
					case AggregratedPotentialField aggregratedPotentialField:
						for (var i = 0; i < aggregratedPotentialField.NodeCount; i++)
						{
							var nodePosition = aggregratedPotentialField.GridTransformer.ToWorld(i);
							canvas.FillCircle(nodePosition.X, nodePosition.Y, 5f);
							var flowVector = aggregratedPotentialField[i];
							var nodeSize = aggregratedPotentialField.GridTransformer.Scale;
							canvas.DrawLine(nodePosition.X, nodePosition.Y, nodePosition.X + flowVector.X * nodeSize.X * 0.5f, nodePosition.Y + flowVector.Y * nodeSize.Y * 0.5f);
						}
						break;
				}
			}
		}
	}
}
