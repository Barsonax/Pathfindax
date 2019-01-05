using System.Diagnostics;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components.Extensions;
using Duality.Plugins.Pathfindax.Visualization;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Utils;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class AstarAlgorithmVisualizerComponent : Component, ICmpRenderer, ICmpInitializable
	{
		/// <summary>
		/// A reference to the <see cref="Duality.Components.Camera"/> thats used to convert the screen coordinates from mouseclicks to world coordinates.
		/// </summary>
		public Camera Camera { get; set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; } = 0;

		[DontSerialize]
		private IDefinitionNodeNetwork _definitionNodeNetwork;
		[DontSerialize]
		private Stopwatch _stopwatch;
		[DontSerialize]
		private AstarAlgorithmVisualization _astarAlgorithmVisualization;

		void ICmpRenderer.GetCullingInfo(out CullingInfo info)
		{
			info = new CullingInfo
			{
				Visibility = VisibilityFlag.AllGroups
			};
		}

		void ICmpInitializable.OnActivate()
		{
			_definitionNodeNetwork = GameObj.GetDefinitionNodeNetwork<IDefinitionNodeNetwork>();
			_astarAlgorithmVisualization = new AstarAlgorithmVisualization(_definitionNodeNetwork);
			_stopwatch = Stopwatch.StartNew();
			DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
		}

		void ICmpInitializable.OnDeactivate() { }

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var position = Camera.GetWorldPos(e.Pos).Xy;
			if (_astarAlgorithmVisualization.EndIndex == null && _astarAlgorithmVisualization.StartIndex != null)
			{
				_astarAlgorithmVisualization.SetTarget(position);
				_astarAlgorithmVisualization.Start(0f, PathfindaxCollisionCategory.All);
			}
			else
			{
				_astarAlgorithmVisualization.SetStart(position);
			}
		}

		public void Draw(IDrawDevice device)
		{
			if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return;
			if (_stopwatch.ElapsedMilliseconds > 1)
			{
				_astarAlgorithmVisualization.Step();
				_stopwatch.Restart();
			}
			_astarAlgorithmVisualization.Draw(new DualityRenderer(device, -5));
		}
	}
}