using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	public class PathfindEngineTestCases
	{
		public static IEnumerable SingleSourcePathRequestComparerTestCases
		{
			get
			{
				yield return new TestCaseData(Substitute.For<IPathRequest>(), Substitute.For<IPathRequest>(), true);

				yield return new TestCaseData(((Func<IPathRequest>)(() =>
					{
						var request = Substitute.For<IPathRequest>();
						request.CollisionCategory.Returns(PathfindaxCollisionCategory.Cat1);
						return request;
					})).Invoke(), ((Func<IPathRequest>)(() =>
					{
						var request = Substitute.For<IPathRequest>();
						return request;
					})).Invoke(), false);
			}
		}
	}
}
