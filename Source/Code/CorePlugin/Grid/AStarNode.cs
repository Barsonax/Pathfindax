using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;

namespace Pathfindax.Grid
{
	[Serializable]
	[DebuggerDisplay("{WorldPosition}")]
	public class AStarNode : IAStarNode
	{
		public INode Source { get; private set; }
		public Vector2 WorldPosition { get; private set; }
		public bool Walkable { get; set; }
		public int GridX { get; private set; }
		public int GridY { get; private set; }
		public IAStarNode Parent { get; set; }
		public int HCost { get; set; }
		public int GCost { get; set; }
		public int HeapIndex { get; set; }
		public int FCost => GCost + HCost;

		public List<IAStarNode> Neighbours { get; set; }

		public AStarNode(INode source)
		{
			Walkable = source.Walkable;
			WorldPosition = source.WorldPosition;
			GridX = source.GridX;
			GridY = source.GridY;
			Source = source;
			HCost = -1;
			GCost = -1;
		}

		public int CompareTo(IAStarNode other)
		{
			var compare = FCost.CompareTo(other.FCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}

		public override string ToString()
		{
			return string.Format("X:{0} Y:{0} Walkable: {3}", GridX, GridY, Walkable);
		}
	}
}
