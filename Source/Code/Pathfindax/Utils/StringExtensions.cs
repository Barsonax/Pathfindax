namespace Pathfindax.Utils
{
	public static class StringExtensions
	{
		public static string GetIntBinaryString(this int n)
		{
			var b = new char[32];
			var pos = 31;
			var i = 0;

			while (i < 32)
			{
				if ((n & (1 << i)) != 0)
				{
					b[pos] = '1';
				}
				else
				{
					b[pos] = '0';
				}
				pos--;
				i++;
			}
			return new string(b);
		}
	}
}
