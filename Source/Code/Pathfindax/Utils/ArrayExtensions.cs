namespace Pathfindax.Utils
{
	public static class ArrayExtensions
	{
		public static T[] Append<T>(this T[] array, T element)
		{
			var newArray = new T[array.Length + 1];
			for (int i = 0; i < array.Length; i++)
			{
				newArray[i] = array[i];
			}
			newArray[newArray.Length - 1] = element;
			return newArray;
		}
	}
}
