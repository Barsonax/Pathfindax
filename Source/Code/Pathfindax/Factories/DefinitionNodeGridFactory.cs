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
		/// <param name="generateNodeGridConnections"></param>
		/// <returns></returns>
		public static Array2D<DefinitionNode> GeneratePreFilledArray(GenerateNodeGridConnections generateNodeGridConnections, int width, int height)
		{
			var array = new Array2D<DefinitionNode>(width, height);
			for (var y = 0; y < height; y++)
			{
				for (var x = 0; x < width; x++)
				{
					var worldPosition = new Vector2(x, y);
					if (generateNodeGridConnections == GenerateNodeGridConnections.None)
					{
						array[x, y] = new DefinitionNode(worldPosition);
					}
					else
					{
						var connections = GetNeighbours(width, height, x, y, generateNodeGridConnections);
						array[x, y] = new DefinitionNode(worldPosition, connections: connections);
					}
				}
			}
			return array;
		}

		private static readonly int[] _connectionBuffer = new int[8];
		private static NodeConnection[] GetNeighbours(int width, int height, int gridX, int gridY, GenerateNodeGridConnections generateNodeGridConnections)
		{
			var count = 0;
			for (var y = -1; y <= 1; y++)
			{
				for (var x = -1; x <= 1; x++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var checkX = gridX + x;
					var checkY = gridY + y;

					if (checkX >= 0 && checkX < width && checkY >= 0 && checkY < height)
					{
						if (generateNodeGridConnections == GenerateNodeGridConnections.NoDiagonal)
						{
							if (x == 1 && y == 1 || x == -1 && y == 1 || x == -1 && y == -1 || x == 1 && y == -1)
							{
								continue;
							}
						}
						_connectionBuffer[count] = width * checkY + checkX;
						count++;
					}
				}
			}
			var neighbours = new NodeConnection[count];
			for (var i = 0; i < neighbours.Length; i++)
			{
				neighbours[i] = new NodeConnection(_connectionBuffer[i]);
			}
			return neighbours;
		}
	}
}
