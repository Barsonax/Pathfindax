using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public static class DefinitionNodeGridFactory
	{
		/// <summary>
		/// Returns a preconfigured <see cref="Array2D{TItem}"/> which can be used to make a <see cref="DefinitionNodeGrid"/>
		/// </summary>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <param name="nodeSize"></param>
		/// <param name="generateNodeGridConnections"></param>
		/// <param name="offset"></param>
		/// <returns></returns>
		public static Array2D<DefinitionNode> GeneratePreFilledArray(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, Vector2 nodeSize, Vector2 offset = default(Vector2))
		{
			var array = new Array2D<DefinitionNode>(width, height);
			for (ushort y = 0; y < height; y++)
			{
				for (ushort x = 0; x < width; x++)
				{
					var worldPosition = new Vector2(x * nodeSize.X, y * nodeSize.Y) + offset;
					var i = width * y + x;
					var node = new DefinitionNode(i, worldPosition, 1);
					array[x, y] = node;
				}
			}

			if (generateNodeGridConnections != GenerateNodeGridConnections.None)
			{
				for (var y = 0; y < height; y++)
				{
					for (var x = 0; x < width; x++)
					{
						var node = array[x, y];
						var neighbours = GetNeighbours(array, x, y, generateNodeGridConnections);
						foreach (var neighbour in neighbours)
						{
							node.Connections.Add(new NodeConnection(neighbour));
						}
					}
				}
			}
			return array;
		}

		private static List<NodePointer> GetNeighbours(IReadOnlyArray2D<DefinitionNode> nodeArray, int gridX, int gridY, GenerateNodeGridConnections generateNodeGridConnections)
		{
			var neighbours = new List<NodePointer>();
			for (var y = -1; y <= 1; y++)
			{
				for (var x = -1; x <= 1; x++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var checkX = gridX + x;
					var checkY = gridY + y;

					if (checkX >= 0 && checkX < nodeArray.Width && checkY >= 0 && checkY < nodeArray.Height)
					{
						if (generateNodeGridConnections == GenerateNodeGridConnections.NoDiagonal)
						{
							if (x == 1 && y == 1 || x == -1 && y == 1 || x == -1 && y == -1 || x == 1 && y == -1)
							{
								continue;
							}
						}
						var p = new NodePointer(nodeArray.Width * checkY + checkX);
						neighbours.Add(p);
					}
				}
			}
			return neighbours;
		}
	}
}
