using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pathfindax.PathfindEngine.Exceptions
{
	public class InvalidAgentSizeException : Exception
	{
		public InvalidAgentSizeException(string message = null) : base(message) { }
	}
}
