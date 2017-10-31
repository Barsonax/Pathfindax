using System.Collections;
using System.Collections.Generic;

namespace Pathfindax.Collections
{
	/// <summary>
	/// A array class that provides both single dimensional and 2-dimensional access to a array.
	/// </summary>
	/// <typeparam name="TItem"></typeparam>
	public class Array2D<TItem> : IReadOnlyArray2D<TItem>, IWriteOnlyArray2D<TItem>, IReadOnlyList<TItem>
	{
		/// <summary>
		/// The length of the internal array
		/// </summary>
		public int Length => Array.Length;

		/// <summary>
		/// The length of the internal array
		/// </summary>
		public int Count => Array.Length;

		/// <summary>
		/// The width of the array in items
		/// </summary>
		public int Width { get; }

		/// <summary>
		/// The height of the array in items
		/// </summary>
		public int Height { get; }

		public TItem[] Array { get; }

		/// <summary>
		/// Provides access to the internal array with a 2-dimensional indexer
		/// </summary>
		/// <param name="x"></param>
		/// <param name="y"></param>
		public TItem this[int x, int y]
		{
			get => Array[x + y * Width];
			set => Array[x + y * Width] = value;
		}

		/// <summary>
		/// Provides access to the internal array with the standard indexer
		/// </summary>
		/// <param name="i"></param>
		public TItem this[int i]
		{
			get => Array[i];
			set => Array[i] = value;
		}

		/// <summary>
		/// Creates a new <see cref="Array2D{T}"/>
		/// </summary>
		/// <param name="width">The width of the array in items</param>
		/// <param name="height">The height of the array in items</param>
		public Array2D(int width, int height)
		{
			Width = width;
			Height = height;
			Array = new TItem[width * height];
		}

		/// <inheritdoc />
		public IEnumerator<TItem> GetEnumerator()
		{
			foreach (var item in Array)
			{
				yield return item;
			}
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}
	}
}
