using System.Collections;
using System.Collections.Generic;

namespace Pathfindax.Utils
{
	public static class ListExtensions
	{
		public static void RemoveAll<T>(this IList<T> list)
		{
			while (list.Count > 0)
			{
				list.RemoveAt(0);
			}
		}
	}
}
