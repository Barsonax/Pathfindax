using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace Pathfindax.Collections
{
	[Serializable]
	[DataContract(Namespace = "")]
	public class Array2D<T> : IEnumerable<T>
	{
		public int Length => _items.Length;

		public int Width => _width;
		[DataMember]
		private int _width;

		public int Height => _height;
		[DataMember]
		private int _height;

		[DataMember]
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
