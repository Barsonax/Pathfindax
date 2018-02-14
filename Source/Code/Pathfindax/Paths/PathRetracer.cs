using System;
using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class PathRetracer<TNode>
	{
		private readonly List<int> _pathBuffer = new List<int>();
		private readonly Func<TNode[], DefinitionNode[], int, int> _getParent;

		public PathRetracer(Func<TNode[], DefinitionNode[], int, int> getParent)
		{
			_getParent = getParent;
		}

		public int[] RetracePath(TNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startIndex, int targetIndex)
		{
			_pathBuffer.Clear();
			var currentNode = targetIndex;

			while (true)
			{
				_pathBuffer.Add(currentNode);
				if (currentNode == startIndex) break;
				currentNode = _getParent.Invoke(pathfindingNetwork, definitionNodes, currentNode);
			}
			var pathArray = new int[_pathBuffer.Count];
			var reverseCount = _pathBuffer.Count - 1;
			for (var i = 0; i < pathArray.Length; i++)
			{
				pathArray[i] = _pathBuffer[reverseCount];
				reverseCount--;
			}
			return pathArray;
		}
	}
}
