using System;

namespace Duality.Plugins.Pathfindax.Tilemaps.Exceptions
{
	public class NoTilemapColliderFound : Exception
	{
		public NoTilemapColliderFound(string message) : base(message)
		{
		}
	}
}
