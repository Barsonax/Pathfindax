using System;
using Duality.Components;
using Duality.Input;
using Duality.Resources;
using Pathfindax.Collections;
using Pathfindax.Paths;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pathfindax.Utils;
using Duality.Drawing;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Components
{
	[Obsolete("WIP")]
	public class FormationControllerComponent : Component, ICmpUpdatable, ICmpInitializable, ICmpRenderer
	{
		private IPathReceiver<PotentialField>[] _selectedPathReceivers;
		public PotentialFieldPathfinderComponent PotentialPathfinderComponent { get; set; }
		public AstarPathfinderComponent AstarPathfinderComponent { get; set; }
		public Camera Camera { get; set; }

		private SquareFormation _activeFormation;

		void ICmpInitializable.OnActivate()
		{
			DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
		}

		void ICmpInitializable.OnDeactivate()
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		public void OnUpdate()
		{
			if (_activeFormation != null)
			{
				UpdateFormation();
			}
		}

		private async void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (_selectedPathReceivers == null)
			{
				_selectedPathReceivers = Scene.Current.FindComponents<IPathReceiver<PotentialField>>().ToArray();
			}
			else
			{
				var targetPos = Camera.GetWorldPos(e.Pos);
				await RequestPaths(targetPos, _selectedPathReceivers);
			}
		}

		private async Task RequestPaths(Vector3 position, IPathReceiver<PotentialField>[] SelectedPathReceivers)
		{
			var formation = new SquareFormation(position, SelectedPathReceivers);
			_activeFormation = formation;
		}

		public async Task UpdateFormation()
		{
			var globalFormationPosition = CalculateAveragePosition(_activeFormation.PathReceivers.Select(x => x.Pos));

			var request = PotentialPathfinderComponent.Pathfinder.RequestPath(new Vector3(globalFormationPosition.X, globalFormationPosition.Y, 0), _activeFormation.Goal, PathfindaxCollisionCategory.Cat1, 1);
			var completedPath = await request;

			_activeFormation.CurrentPosition = globalFormationPosition + completedPath.GetHeading(globalFormationPosition) * 128;
			await UpdateFormationAgents();
		}

		private async Task UpdateFormationAgents()
		{
			for (int i = 0; i < _activeFormation.PathReceivers.Length; i++)
			{
				var pathReceiver = _activeFormation.PathReceivers[i];
				var formationPosition = _activeFormation.GetFormationPosition(i);
				var request = PotentialPathfinderComponent.Pathfinder.RequestPath(pathReceiver.Pos, formationPosition, pathReceiver.CollisionCategory, pathReceiver.AgentSize);
				var completedPath = await request;
				pathReceiver.SetPath(completedPath, request.Status);
			}
		}

		private Vector2 CalculateAveragePosition(IEnumerable<Vector3> positions)
		{
			return new Vector2(positions.Average(x => x.X), positions.Average(x => x.Y));
		}

		void ICmpRenderer.GetCullingInfo(out CullingInfo info)
		{
			info = new CullingInfo
			{
				Visibility = VisibilityFlag.AllGroups
			};
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (_activeFormation == null) return;
			var canvas = new Canvas();
			canvas.Begin(device);
			for (int i = 0; i < _activeFormation.PathReceivers.Length; i++)
			{
				var pos = _activeFormation.GetFormationPosition(i);
				canvas.DrawCircle(pos.X, pos.Y, 3);
			}
			canvas.End();
		}
	}

	public class SquareFormation
	{
		public SquareFormation(Vector3 goal, IPathReceiver<PotentialField>[] pathReceivers)
		{
			Goal = goal;
			var size = (int)MathF.Ceiling(MathF.Sqrt(pathReceivers.Length));
			PathReceivers = new Array2D<IPathReceiver<PotentialField>>(size, size);
			for (int i = 0; i < pathReceivers.Length; i++)
			{
				PathReceivers[i] = pathReceivers[i];
			}
		}

		public Vector3 GetFormationPosition(int index)
		{
			var gridPosition = PathReceivers.ToGrid(index);
			return new Vector3((gridPosition.X - PathReceivers.Width / 2) * 64 + CurrentPosition.X, (gridPosition.Y - PathReceivers.Height / 2) * 64 + CurrentPosition.Y, 0);
		}

		public Array2D<IPathReceiver<PotentialField>> PathReceivers { get; }

		public Vector3 Goal { get; }
		public Vector2 CurrentPosition { get; set; }
		public Vector2 Rotation { get; }
	}
}
