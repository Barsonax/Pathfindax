using System;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// Spams path requests as a example
	/// Use the <see cref="TopLeftCorner"/> and <see cref="BottomRightCorner"/> properties to control where it will spam the path requests.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathfindaxPathSpammerComponent : Component, ICmpUpdatable, ICmpRenderer
	{
		public byte Clearance { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Point2 TopLeftCorner { get; set; }
		public Point2 BottomRightCorner { get; set; }
		public PositionF[] Path { get; private set; }

		[EditorHintRange(1,1000)]
		public int FramesBetweenRequest { get; set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		[EditorHintFlags(MemberFlags.Visible)]
		private PathfinderProxy PathfinderProxy { get; set; }

		private readonly Random _randomGenerator = new Random();
		private int _counter;
		private  int _frameCounter;
		void ICmpUpdatable.OnUpdate()
		{
			_counter++;
			if (_counter > 3)
			{
				if (_frameCounter >= FramesBetweenRequest)
				{
					var start = new PositionF(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
					var end = new PositionF(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
					var request = new PathRequest(PathSolved, start, end, Clearance, CollisionCategory);
					PathfinderProxy.RequestPath(request);
					_frameCounter = 0;
				}
				_frameCounter++;
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
				
				for (int index = 0; index < Path.Length; index++)
				{
					if(index == 0) canvas.State.ColorTint = ColorRgba.Green;
					else if(index == Path.Length -1) canvas.State.ColorTint = ColorRgba.Blue;
					else canvas.State.ColorTint = ColorRgba.Red;
					var position = Path[index];
					canvas.FillCircle(position.X, position.Y, 10f);
				}

				canvas.State.ColorTint = ColorRgba.Red;
				for (int i = 1; i < Path.Length; i++)
				{
					var from = Path[i - 1];
					var to = Path[i];
					canvas.DrawLine(from.X, from.Y, 0, to.X, to.Y, 0);
				}
			}
		}
	}
}
