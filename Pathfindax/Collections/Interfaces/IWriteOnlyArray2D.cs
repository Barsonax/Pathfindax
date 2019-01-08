namespace Pathfindax.Collections
{
	public interface IWriteOnlyArray2D<in TItem>
	{
		TItem this[int i] { set; }
		TItem this[int x, int y] { set; }
	}
}