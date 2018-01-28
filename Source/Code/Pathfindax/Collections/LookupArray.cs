namespace Pathfindax.Collections
{
	public class LookupArray
	{
		private byte _generation;
		private readonly byte[] _spots;
		public LookupArray(int size)
		{
			_spots = new byte[size];
		}

		public void Occupy(int index)
		{
			_spots[index] = _generation;
		}

		public void Clear()
		{
			if (_generation == byte.MaxValue)
			{
				_generation = 0;
				for (int i = 0; i < _spots.Length; i++)
				{
					_spots[i] = 0;
				}
			}
			else
			{
				_generation++;
			}			
		}

		public bool Contains(int index)
		{
			return _spots[index] == _generation;
		}
	}
}
