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

		public static T Dereference<T>(int index, T[] nodeArray)
		{
			return nodeArray[index];
		}

		public static DefinitionNode Dereference(int index, IDefinitionNodeNetwork nodeArray)
		{
			return nodeArray[index];
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