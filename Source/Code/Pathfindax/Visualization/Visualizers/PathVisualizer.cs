using Duality;
using Pathfindax.Collections;
using Pathfindax.Paths;

namespace Pathfindax.Visualization
{
	public class PathVisualizer : IVisualizer
	{
		private readonly PathLayer _pathLayer;
		private readonly VectorLayer _vectorLayer;

		public PathVisualizer()
		{
			_pathLayer = new PathLayer();
			_vectorLayer = new VectorLayer();
		}

		public void SetPath(IPath path)
		{
			switch (path)
			{
				case NodePath completedPath:
					_pathLayer.Path = completedPath.Path;
					_pathLayer.Start = completedPath.Path[0];
					_pathLayer.End = completedPath.Path[completedPath.Path.Length - 1];
					_pathLayer.Transformer = completedPath.Transformer;
					_pathLayer.NodeArray = completedPath.DefinitionNodes;
					break;
				case FlowField flowField:
					if (_vectorLayer.Vectors.Length != flowField.FlowArray.Length) _vectorLayer.Vectors = new Array2D<Vector2>(flowField.FlowArray.Width, flowField.FlowArray.Height);
					for (int i = 0; i < flowField.FlowArray.Length; i++)
					{
						_vectorLayer.Vectors[i] = flowField[i];
					}
					break;
				case PotentialFieldBase aggregratedPotentialField:
					var length = aggregratedPotentialField.Width * aggregratedPotentialField.Height;
					if (_vectorLayer.Vectors == null || _vectorLayer.Vectors.Length != length) _vectorLayer.Vectors = new Array2D<Vector2>(aggregratedPotentialField.Width, aggregratedPotentialField.Height);
					_vectorLayer.Transformer = aggregratedPotentialField.GridTransformer;
					for (int i = 0; i < length; i++)
					{
						_vectorLayer.Vectors[i] = aggregratedPotentialField[i];
					}
					break;
			}
		}

		public void Draw(IRenderer renderer)
		{
			_vectorLayer.Draw(renderer);
			_pathLayer.Draw(renderer);
		}
	}
}
