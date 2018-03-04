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
				case NodePath completedPath:
					_nodePathVisualization.Path = completedPath.Path;
					_nodePathVisualization.Start = completedPath.Path[0];
					_nodePathVisualization.End = completedPath.Path[completedPath.Path.Length - 1];
					_nodePathVisualization.Transformer = completedPath.Transformer;
					_nodePathVisualization.NodeArray = completedPath.DefinitionNodes;
					break;
				case FlowField flowField:
					if (_vectorFieldVisualization.Vectors.Length != flowField.FlowArray.Length) _vectorFieldVisualization.Vectors = new Array2D<Vector2>(flowField.FlowArray.Width, flowField.FlowArray.Height);
					for (int i = 0; i < flowField.FlowArray.Length; i++)
					{
						_vectorFieldVisualization.Vectors[i] = flowField[i];
					}
					break;
				case PotentialFieldBase aggregratedPotentialField:
					var length = aggregratedPotentialField.Width * aggregratedPotentialField.Height;
					if (_vectorFieldVisualization.Vectors == null || _vectorFieldVisualization.Vectors.Length != length) _vectorFieldVisualization.Vectors = new Array2D<Vector2>(aggregratedPotentialField.Width, aggregratedPotentialField.Height);
					_vectorFieldVisualization.Transformer = aggregratedPotentialField.GridTransformer;
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
