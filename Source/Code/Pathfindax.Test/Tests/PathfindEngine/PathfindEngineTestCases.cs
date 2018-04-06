using System;
using System.Collections.Generic;
using NSubstitute;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Tests.PathfindEngine
{
    public class PathfindEngineTestCases
    {
        public static IEnumerable<object[]> SingleSourcePathRequestComparerTestCases
        {
            get
            {
                yield return new object[] { Substitute.For<IPathRequest>(), Substitute.For<IPathRequest>(), true };

                yield return new object[] {((Func<IPathRequest>)(() =>
                    {
                        var request = Substitute.For<IPathRequest>();
                        request.CollisionCategory.Returns(PathfindaxCollisionCategory.Cat1);
                        return request;
                    })).Invoke(), ((Func<IPathRequest>)(() =>
                    {
                        var request = Substitute.For<IPathRequest>();
                        return request;
                    })).Invoke(), false };
            }
        }
    }
}
