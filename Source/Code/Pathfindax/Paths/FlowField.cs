using Duality;
using Pathfindax.Grid;

namespace Pathfindax.Paths
{
	public class FlowField : IPath
	{
		public Vector2 this[int i] => PotentialField.VectorDirectionCache[FlowArray[i]];

		public readonly DefinitionNodeGrid DefinitionNodeGrid;
		public readonly byte[] FlowArray;
		private readonly int _targetIndex;

		public FlowField(PotentialField potentialField)
		{
			_targetIndex = potentialField.TargetIndex;
			DefinitionNodeGrid = potentialField.DefinitionNodeGrid;
			FlowArray = new byte[potentialField.PotentialArray.Array.Length];
			for (int i = 0; i < FlowArray.Length; i++)
			{
				FlowArray[i] = potentialField.GetDirectionIndex(i);
			}
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

		public bool NextWaypoint()
		{
			return true;
		}

		public override string ToString()
		{
			return $"Flowfield to {_targetIndex}";
		}
	}
}