using Pathfindax.Grid;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// References a node by its index in a array
	/// </summary>
	public struct NodePointer
	{
		/// <summary>
		/// A pointer that points to nothing.
		/// </summary>
		public static readonly NodePointer NullPointer = new NodePointer(-1);

		public readonly int Index;

		public NodePointer(int index)
		{
			Index = index;
		}

		public static T Dereference<T>(NodePointer p, T[] nodeArray)
		{
			if (p.Index == -1)
			{
				
			}
			return nodeArray[p.Index];
		}

		public static DefinitionNode Dereference(NodePointer p, IDefinitionNodeNetwork nodeArray)
		{
			return nodeArray[p.Index];
		}

		public override string ToString()
		{
			return Index.ToString();
		}
	}
}