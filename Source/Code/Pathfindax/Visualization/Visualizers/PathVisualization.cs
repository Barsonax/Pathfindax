using Pathfindax.Paths;

namespace Pathfindax.Visualization
{
	public class PathVisualization : IVisualizer
	{
		private readonly WaypointPathVisualization _waypointPathVisualization;
		private readonly VectorFieldVisualization _vectorFieldVisualization;

		public PathVisualization()
		{
			_waypointPathVisualization = new WaypointPathVisualization();
			_vectorFieldVisualization = new VectorFieldVisualization();
		}

		public void SetPath(IPath path)
		{
			switch (path)
			{
				case IWaypointPath waypointPath:
					_waypointPathVisualization.SetPath(waypointPath.Path, waypointPath.Transformer, waypointPath.DefinitionNodes);
					break;
				case IVectorField vectorField:
					_vectorFieldVisualization.SetPath(vectorField);
					break;
			}
		}

		public void Draw(IRenderer renderer)
		{
			_vectorFieldVisualization.Draw(renderer);
			_waypointPathVisualization.Draw(renderer);
		}
	}
}
