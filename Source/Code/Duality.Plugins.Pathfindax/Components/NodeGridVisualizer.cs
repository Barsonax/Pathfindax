using Duality.Drawing;
using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Class for visualizing a <see cref="ISourceNodeGrid{TNode}"/>
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IPathfinderComponent<ISourceNodeGrid<ISourceGridNode>>))]
	public class NodeGridVisualizer : Component, ICmpRenderer
	{
		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; set; } = PathfindaxCollisionCategory.Cat1;

		/// <summary>
		/// If true the nodegrid will be drawn.
		/// </summary>
		public bool Visualize { get; set; } = true;

		/// <summary>
		/// Only needed in order to implement <see cref="ICmpRenderer"/>
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (!Visualize) return;
			var pathfinderComponent = GameObj.GetComponent<IPathfinderComponent<ISourceNodeGrid<ISourceGridNode>>>();
			if (pathfinderComponent?.Pathfinder?.SourceNodeNetwork != null)
			{
				var nodeSize = pathfinderComponent.Pathfinder.SourceNodeNetwork.NodeSize.X * 0.3f;
				var canvas = new Canvas(device, new CanvasBuffer());
				canvas.State.ZOffset = -8;
				foreach (var node in pathfinderComponent.Pathfinder.SourceNodeNetwork)
				{
					canvas.State.ColorTint = ColorRgba.LightGrey;
					var nodePosition = node.WorldPosition;
					var clearance = node.GetTrueClearance(CollisionCategory);
					if (clearance == int.MaxValue)
					{
						canvas.DrawCircle(nodePosition.X, nodePosition.Y, nodeSize);
					}
					else
					{
						canvas.FillCircle(nodePosition.X, nodePosition.Y, nodeSize);
						canvas.State.ColorTint = ColorRgba.Black;
						canvas.DrawText(clearance.ToString(), nodePosition.X, nodePosition.Y, -1f, Alignment.Center);
					}
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var connection in node.Connections)
					{
						if ((connection.CollisionCategory & CollisionCategory) != 0)
						{
							continue;
						}
						var vector = (connection.To.WorldPosition - nodePosition) * 0.5f;
						canvas.DrawDashLine(nodePosition.X, nodePosition.Y, nodePosition.X + vector.X, nodePosition.Y + vector.Y);
					}
				}
			}
		}
	}
}