using System;
using Duality;
using Duality.Drawing;
using Duality.Editor;
using Pathfindax.Duality.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Pathfindax.Duality.Test.Components
{
	/// <summary>
	/// Spams path requests as a example
	/// Use the <see cref="TopLeftCorner"/> and <see cref="BottomRightCorner"/> properties to control where it will spam the path requests.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathfindaxPathSpammerComponent : Component, ICmpUpdatable, ICmpRenderer
	{
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Point2 TopLeftCorner { get; set; }
		public Point2 BottomRightCorner { get; set; }
		public PositionF[] Path { get; private set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		[EditorHintFlags(MemberFlags.Visible)]
		private PathfinderProxy PathfinderProxy { get; set; }

		private readonly Random _randomGenerator = new Random();
		private int _counter;
		void ICmpUpdatable.OnUpdate()
		{
			_counter++;
			if (_counter > 3)
			{
				var start = new PositionF(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var end = new PositionF(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var request = new PathRequest(PathSolved, start, end, 1, CollisionCategory);
				PathfinderProxy.RequestPath(request);
			}
		}

		private void PathSolved(CompletedPath completedPath)
		{
			Path = completedPath.Path;
		}

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
	(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
	(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (Path != null)
			{
				var canvas = new Canvas(device);
				canvas.State.ZOffset = -10;
				canvas.State.ColorTint = ColorRgba.Red;
				foreach (var position in Path)
				{
					canvas.FillCircle(position.X, position.Y, 10f);
				}
			}
		}
	}
}
