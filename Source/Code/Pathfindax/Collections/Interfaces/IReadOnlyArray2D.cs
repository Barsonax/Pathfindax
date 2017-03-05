using System.Collections.Generic;

namespace Pathfindax.Collections
{
	public interface IReadOnlyArray2D<out TItem> : IEnumerable<TItem>
	{
		TItem this[int i] { get; }
		TItem this[int x, int y] { get; }

		int Height { get; }
		int Length { get; }
		int Width { get; }
	}
}