using Pathfindax.Graph;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// References a node by its index in a array
	/// </summary>
	public struct ArrayIndex
	{
		/// <summary>
		/// A pointer that points to nothing.
		/// </summary>
		public static readonly ArrayIndex NullPointer = new ArrayIndex(-1);

		public readonly int Index;

		public ArrayIndex(int index)
		{
			Index = index;
		}

		public override string ToString()
		{
			return Index.ToString();
		}

		public static implicit operator int(ArrayIndex pointer)
		{
			return pointer.Index;
		}
	}
}