using System.Diagnostics;
using Duality;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class FlowField : IPath
	{
		public Vector2 this[int i]
		{
			get
			{
				var flowNode = NodeArray[i];
				if (flowNode.Index == -1) return Vector2.Zero;
				var from = DefinitionNodeGrid[i];
				var to = NodePointer.Dereference(flowNode, DefinitionNodeGrid);
				return to.Position - from.Position;
			}
		}

		public readonly DefinitionNodeGrid DefinitionNodeGrid;
		public readonly NodePointer[] NodeArray;
		private readonly DijkstraNode[] _pathfindingNetwork;
		private readonly int _targetIndex;

		public FlowField(DefinitionNodeGrid definitionNodeGrid, DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, NodePointer[] nodeArray)
		{
			DefinitionNodeGrid = definitionNodeGrid;
			NodeArray = nodeArray;
			_pathfindingNetwork = pathfindingNetwork;
			_targetIndex = targetNode.DefinitionNode.Index.Index;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var definitionNode = DefinitionNodeGrid.GetNode(currentPosition.X, currentPosition.Y);
			if (definitionNode.Index.Index == _targetIndex)
			{
				return definitionNode.Position - currentPosition;
			}
			return this[definitionNode.Index.Index];
		}

		public bool CanRetracePath(DijkstraNode startGridNode, float neededClearance)
		{
			var toIndex = startGridNode.DefinitionNode.Index.Index;
			while (true)
			{
				var to = NodePointer.Dereference(NodeArray[toIndex], _pathfindingNetwork);
				if (to.Clearance < neededClearance)
				{
					Debug.WriteLine(to.DefinitionNode.Index);
					return false;
				}
				if (toIndex == _targetIndex) break;
				toIndex = to.DefinitionNode.Index.Index;
			}
			return true;
		}

		public bool NextWaypoint()
		{
			return true;
		}
	}
}