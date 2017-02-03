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

		public static void AddRange<T>(this IList<T> list, IEnumerable<T> itemsToAdd)
		{
			foreach (var item in itemsToAdd)
			{
				list.Add(item);
			}
		}
	}
}
