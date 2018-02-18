using System.Collections.Generic;

namespace Pathfindax.Collections
{
	public interface IReadOnlyArray2D<out TItem> : IReadOnlyArray2D ,IEnumerable<TItem>
	{
		TItem[] Array { get; }
		TItem this[int i] { get; }
		TItem this[int x, int y] { get; }
	}

	public interface IReadOnlyArray2D
	{
		int Height { get; }
		int Length { get; }
		int Width { get; }
	}
}