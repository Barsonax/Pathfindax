using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.Visualization
{
	public class PathVisualizer : IVisualizer
	{
		public DrawingState DrawingState { get; }

		private readonly PathLayer _pathLayer;
		private readonly VectorLayer _vectorLayer;

		public PathVisualizer(DefinitionNode[] nodeArray, Transformer transformer)
		{
			DrawingState = new DrawingState(nodeArray, transformer);
			_pathLayer = new PathLayer();
			DrawingState.Layers.Add(_pathLayer);
			_vectorLayer = new VectorLayer(nodeArray.Length);
			DrawingState.Layers.Add(_vectorLayer);
		}

		public void SetPath(IPath path)
		{
			switch (path)
			{
				case NodePath completedPath:
					_pathLayer.Path = completedPath.Path;
					break;
				case FlowField flowField:
					for (int i = 0; i < flowField.FlowArray.Length; i++)
					{
						_vectorLayer.Vectors[i] = flowField[i];
					}
					break;
				case PotentialField potentialField:
					for (int i = 0; i < potentialField.PotentialArray.Length; i++)
					{
						_vectorLayer.Vectors[i] = potentialField[i];
					}
					break;
				case AggregratedPotentialField aggregratedPotentialField:
					for (int i = 0; i < aggregratedPotentialField.NodeCount; i++)
					{
						_vectorLayer.Vectors[i] = aggregratedPotentialField[i];
					}
					break;
			}
		}
	}
}
