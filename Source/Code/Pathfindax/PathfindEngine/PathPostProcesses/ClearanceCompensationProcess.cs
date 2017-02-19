using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine.PathPostProcesses
{
	public class ClearanceCompensationProcess : IPathPostProcess, IPathPreProcess
	{
		private PositionF _nodeWorldSize;
		public ClearanceCompensationProcess(INodeGridBase nodeGrid)
		{
			_nodeWorldSize = nodeGrid.NodeSize;
		}

		public IList<PositionF> Process(IList<PositionF> path, PathRequest pathRequest)
		{
			var clearanceOffset = _nodeWorldSize * Math.Max(0f, pathRequest.AgentSize - 1) * 0.5f;
			return path.Select(pos => new PositionF(pos.X, pos.Y) + clearanceOffset).ToList();
		}

		public void Process(PathRequest pathRequest)
		{
			var clearanceOffset = _nodeWorldSize * Math.Max(0f, pathRequest.AgentSize - 1) * 0.5f;
			pathRequest.PathStart = pathRequest.PathStart - clearanceOffset;
			pathRequest.PathEnd = pathRequest.PathEnd - clearanceOffset;
		}
	}
}
