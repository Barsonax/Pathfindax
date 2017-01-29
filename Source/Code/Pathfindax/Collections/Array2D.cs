using System;
using System.Collections;
using System.Collections.Generic;

namespace Pathfindax.Collections
{
	[Serializable]
	public class Array2D<T> : IEnumerable<T>
	{
		public int Length => _items.Length;

		public int Width => _width;
		private int _width;

		public int Height => _height;
		private int _height;

		private T[] _items;

		public T this[int x, int y]
		{
			get { return _items[x + y * _width]; }
			set { _items[x + y * _width] = value; }
		}

		public T this[int i]
		{
			get { return _items[i]; }
			set { _items[i] = value; }
		}

		public Array2D(int width, int height)
		{
			_width = width;
			_height = height;
			_items = new T[width * height];
		}

		public IEnumerator<T> GetEnumerator()
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
