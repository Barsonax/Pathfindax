using System;

namespace Duality.Plugins.Pathfindax.Tilemaps.Exceptions
{
	public class InvalidTilemapSize : Exception
	{
		public InvalidTilemapSize(string message) : base(message)
		{
		}
	}
}
