using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;

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

		/// <summary>
		/// The internal single dimensional array thats used to store the <typeparamref name="TItem"/>s
		/// </summary>
		public TItem[] Array { get; }

		/// <summary>
		/// Provides access to the internal array with a 2-dimensional indexer
		/// </summary>
		/// <param name="x"></param>
		/// <param name="y"></param>
		public TItem this[int x, int y]
		{
			get
			{
				if (x >= Width)
				{
					Debugger.Break();
					throw new IndexOutOfRangeException();
				}

				return Array[x + y * Width];
			}
			set
			{
				if (x >= Width)
				{
					Debugger.Break();
					throw new IndexOutOfRangeException();
				}
				Array[x + y * Width] = value;
			}
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

		public Array2D(TItem[] array, int width, int height)
		{
			if (width * height != array.Length) throw new ArgumentException("The length of the array is not equal to width * height");
			Width = width;
			Height = height;
			Array = array;
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
