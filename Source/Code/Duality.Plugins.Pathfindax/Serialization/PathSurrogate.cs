using System.Linq;
using System.Reflection;
using Duality.Serialization;
using Pathfindax.Paths;

namespace Duality.Plugins.Pathfindax.Serialization
{
	public class PathSurrogate : SerializeSurrogate<IPath>
	{
		public override bool MatchesType(TypeInfo t)
		{
			return t.ImplementedInterfaces.Contains(typeof(IPath));
		}

		public override void WriteData(IDataWriter writer)
		{
		}

		public override object ConstructObject(IDataReader reader, TypeInfo objType)
		{
			return null;
		}

		public override void ReadData(IDataReader reader) { }
	}
}
