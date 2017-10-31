using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Factories;
using Pathfindax.Grid;

namespace Pathfindax.Test.Setup
{
    public class AstarGridAlgorithmCases
    {
        public static AstarNodeGrid InitializeNodeGrid(int width, int height, Vector2 nodeSize)
        {
            var sourceNodeGridFactory = new SourceNodeGridFactory();
            var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(width, height, nodeSize, GenerateNodeGridConnections.All);
            return new AstarNodeGrid(sourceNodeGrid);
        }

        public static IEnumerable FindPathTestCases
        {
            get
            {
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(15, 15, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(15, 16, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 15, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 24, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(8, 16, new Vector2(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new Vector2(1, 1)), 5.0f, 3.0f, 8.0f, 14.0f);
			}
        }
    }
}