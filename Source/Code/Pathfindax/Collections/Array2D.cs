using System.Collections;
using System.Collections.Generic;

namespace Pathfindax.Collections
{
	/// <summary>
	/// A array class that provides both single dimensional and 2-dimensional access to a array.
	/// </summary>
	/// <typeparam name="TItem"></typeparam>
	public class Array2D<TItem> : IReadOnlyArray2D<TItem>, IWriteOnlyArray2D<TItem>
	{
		/// <summary>
		/// The length of the internal array
		/// </summary>
		public int Length => _items.Length;

		/// <summary>
		/// The width of the array in items
		/// </summary>
		public int Width { get; }

		/// <summary>
		/// The height of the array in items
		/// </summary>
		public int Height { get; }

		private readonly TItem[] _items;

		/// <summary>
		/// Provides access to the internal array with a 2-dimensional indexer
		/// </summary>
		/// <param name="x"></param>
		/// <param name="y"></param>
		public TItem this[int x, int y]
		{
			get { return _items[x + y * Width]; }
			set { _items[x + y * Width] = value; }
		}

		/// <summary>
		/// Provides access to the internal array with the standard indexer
		/// </summary>
		/// <param name="i"></param>
		public TItem this[int i]
		{
			get { return _items[i]; }
			set { _items[i] = value; }
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
			_items = new TItem[width * height];
		}

		/// <inheritdoc />
		public IEnumerator<TItem> GetEnumerator()
		{
			foreach (var item in _items)
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
