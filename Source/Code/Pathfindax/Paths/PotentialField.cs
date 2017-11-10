using Duality;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class PotentialField : IPath
	{
		public Vector2 this[int i]
		{
			get
			{
				var y = i / NodeArray.Width;
				var x = i - y * NodeArray.Width;
				return this[x, y];
			}
		}

		public Vector2 this[int nodeX, int nodeY]
		{
			get
			{
				var lowestPotential = float.MaxValue;
				var toX = nodeX;
				var toY = nodeY;
				for (var y = -1; y < 2; y++)
				{
					for (var x = -1; x < 2; x++)
					{
						var neighbourX = nodeX + x;
						var neighbourY = nodeY + y;
						if (neighbourX > 0 && neighbourY > 0 && neighbourX < NodeArray.Width && neighbourY < NodeArray.Height && NodeArray[neighbourX, neighbourY] < lowestPotential)
						{
							toX = neighbourX;
							toY = neighbourY;
							lowestPotential = NodeArray[neighbourX, neighbourY];
						}
					}
				}
				return new Vector2(toX - nodeX, toY - nodeY) * DefinitionNodeGrid.NodeSize;
			}
		}


		public readonly DefinitionNodeGrid DefinitionNodeGrid;
		public readonly Array2D<float> NodeArray;
		private readonly int _targetIndex;

		public PotentialField(DefinitionNodeGrid definitionNodeGrid, DijkstraNode targetNode, Array2D<float> nodeArray)
		{
			DefinitionNodeGrid = definitionNodeGrid;
			NodeArray = nodeArray;
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

		public bool NextWaypoint()
		{
			return true;
		}
	}
}
