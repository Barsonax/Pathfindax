using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Grid;

namespace Pathfindax.PathfindEngine
{
	public class Pathfinder<TNode> : IProcesser<Vector2[], PathRequest>
		where TNode : INode
	{
		public bool IsBusy { get; set; }
		private IPathFindAlgorithm<TNode> Algorithm { get; }
		private IList<IPathPostProcess> PathPostProcesses { get; }

		public Pathfinder(IPathFindAlgorithm<TNode> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		{
			Algorithm = pathFindAlgorithm;
			PathPostProcesses = pathPostProcesses;
		}

		public Vector2[] Process(PathRequest pathRequest)
		{
			var path = Algorithm.FindPath(pathRequest.PathStart, pathRequest.PathEnd);
			if (path == null) return null;
			if (PathPostProcesses != null)
			{
				foreach (var postProcess in PathPostProcesses)
				{
					path = postProcess.Process(path);
				}
			}
			return path.Select(x => x.WorldPosition).ToArray();
		}
	}
}
