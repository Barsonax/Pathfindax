using System.Collections.Generic;
using Duality;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public class DynamicPotentialField : PotentialField, IUpdatable
	{
		private readonly List<PotentialFunction> _valueProviders = new List<PotentialFunction>();

		public DynamicPotentialField(GridTransformer gridTransformer, Point2 targetNode) : base(gridTransformer, targetNode) { }

		public void Register()
		{
			PathfindaxEngine.AddUpdatable(this);
		}

		public void AddPotentialFunction(PotentialFunction potentialFunction)
		{
			_valueProviders.Add(potentialFunction);
		}

		private void AddPotential(PotentialFunction potentialFunction)
		{
			potentialFunction.UpdateGridPosition();
			for (var valueY = -potentialFunction.MaxGridDistance; valueY <= potentialFunction.MaxGridDistance; valueY++)
			{
				for (var valueX = -potentialFunction.MaxGridDistance; valueX <= potentialFunction.MaxGridDistance; valueX++)
				{
					var coords = new Point2(valueX + potentialFunction.GridPosition.X, valueY + potentialFunction.GridPosition.Y);
					if (coords.X >= 0 && coords.Y >= 0 && coords.X < PotentialArray.Width && coords.Y < PotentialArray.Height)
					{
						var value = potentialFunction.GetValue(coords.X, coords.Y);
						PotentialArray[coords.X, coords.Y] += value;
					}
				}
			}
		}

		public void Update()
		{
			for (var i = 0; i < PotentialArray.Array.Length; i++)
			{
				PotentialArray.Array[i] = 0f;
			}

			foreach (var valueProvider in _valueProviders)
			{
				AddPotential(valueProvider);
			}
		}
	}
}