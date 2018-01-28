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

		public static bool IsNullPointer(ArrayIndex p)
		{
			return p.Index == -1;
		}

		public static T Dereference<T>(ArrayIndex p, T[] nodeArray)
		{
			return nodeArray[p.Index];
		}

		public static T Dereference<T>(int index, T[] nodeArray)
		{
			return nodeArray[index];
		}

		public static DefinitionNode Dereference(ArrayIndex p, IDefinitionNodeNetwork nodeArray)
		{
			return nodeArray[p.Index];
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