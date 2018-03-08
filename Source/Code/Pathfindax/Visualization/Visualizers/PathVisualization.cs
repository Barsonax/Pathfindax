using Duality;
using Pathfindax.Collections;
using Pathfindax.Paths;

namespace Pathfindax.Visualization
{
	public class PathVisualization : IVisualizer
	{
		private readonly NodePathVisualization _nodePathVisualization;
		private readonly VectorFieldVisualization _vectorFieldVisualization;

		public PathVisualization()
		{
			_nodePathVisualization = new NodePathVisualization();
			_vectorFieldVisualization = new VectorFieldVisualization();
		}

		public void SetPath(IPath path)
		{
			switch (path)
			{
				case IWaypointPath waypointPath:
					_nodePathVisualization.Path = waypointPath.Path;
					_nodePathVisualization.Start = waypointPath.Path[0];
					_nodePathVisualization.End = waypointPath.Path[waypointPath.Path.Length - 1];
					_nodePathVisualization.Transformer = waypointPath.Transformer;
					_nodePathVisualization.NodeArray = waypointPath.DefinitionNodes;
					break;
				case IVectorField aggregratedPotentialField:
					var length = aggregratedPotentialField.Width * aggregratedPotentialField.Height;
					if (_vectorFieldVisualization.Vectors == null || _vectorFieldVisualization.Vectors.Length != length) _vectorFieldVisualization.Vectors = new Array2D<Vector2>(aggregratedPotentialField.Width, aggregratedPotentialField.Height);
					_vectorFieldVisualization.Transformer = aggregratedPotentialField.Transformer;
					for (int i = 0; i < length; i++)
					{
						_vectorFieldVisualization.Vectors[i] = aggregratedPotentialField[i];
					}
					break;
			}
		}

		public void Draw(IRenderer renderer)
		{
			_vectorFieldVisualization.Draw(renderer);
			_nodePathVisualization.Draw(renderer);
		}
	}
}
