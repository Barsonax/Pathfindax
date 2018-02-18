using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Graph
{
	public class BrushfireClearanceGenerator : IPathfindNodeGenerator<AstarNode>
	{
		private readonly int _maxClearance;
		private readonly IDefinitionNodeGrid _definitionNodeGrid;

		public BrushfireClearanceGenerator(IDefinitionNodeGrid definitionNodeGrid, int maxClearance)
		{
			_maxClearance = maxClearance;
			_definitionNodeGrid = definitionNodeGrid;
		}

		public void Generate(AstarNode[] pathfindingNetwork, PathfindaxCollisionCategory collisionCategory)
		{
			for (var i = 0; i < _definitionNodeGrid.DefinitionNodeArray.Array.Length; i++)
			{
				ref var definitionNode = ref _definitionNodeGrid.DefinitionNodeArray.Array[i];
				var clearance = CalculateClearance(ref definitionNode, collisionCategory, _maxClearance);
				pathfindingNetwork[i].Clearance = clearance;
			}
		}

		public bool IsBlocked(int x, int y, PathfindaxCollisionCategory collisionCategory)
		{
			if (x <= 0 || y <= 0 || x >= _definitionNodeGrid.DefinitionNodeArray.Width - 1 || y >= _definitionNodeGrid.DefinitionNodeArray.Height - 1) return true;
			foreach (var connection in _definitionNodeGrid.DefinitionNodeArray[x, y].Connections)
			{
				if ((connection.CollisionCategory & collisionCategory) != 0)
				{
					return true;
				}
			}
			return false;
		}

		public float CalculateClearance(ref DefinitionNode definitionNode, PathfindaxCollisionCategory collisionCategory, int maxClearance)
		{
			var fromCoordinates = new Point2((int)definitionNode.Position.X, (int)definitionNode.Position.Y);
			if (IsBlocked(fromCoordinates.X, fromCoordinates.Y, collisionCategory))
			{
				return 1;
			}
			for (var checkClearance = 1; checkClearance < maxClearance; checkClearance++)
			{
				for (var x = -checkClearance; x <= checkClearance; x++)
				{
					if (IsBlocked(fromCoordinates.X + x, fromCoordinates.Y + checkClearance, collisionCategory))
					{
						return checkClearance * 2 + 1;
					}

					if (IsBlocked(fromCoordinates.X + x, fromCoordinates.Y - checkClearance, collisionCategory))
					{
						return checkClearance * 2 + 1;
					}
				}

				for (var y = -checkClearance + 1; y < checkClearance; y++)
				{
					if (IsBlocked(fromCoordinates.X + checkClearance, fromCoordinates.Y + y, collisionCategory))
					{
						return checkClearance * 2 + 1;
					}

					if (IsBlocked(fromCoordinates.X - checkClearance, fromCoordinates.Y + y, collisionCategory))
					{
						return checkClearance * 2 + 1;
					}
				}
			}

			return maxClearance;
		}
	}
}