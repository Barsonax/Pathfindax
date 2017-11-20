using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Paths
{
	public class DynamicPotentialField : PotentialFieldBase, IDisposable
	{
		public Array2D<float> PotentialArray { get; }
		private readonly Dictionary<object, PotentialFunction> _valueProviders = new Dictionary<object, PotentialFunction>();
		private readonly DynamicPotentialFieldUpdater _dynamicPotentialFieldUpdater;

		/// <summary>
		/// Creates a new <see cref="DynamicPotentialField"/>
		/// </summary>
		/// <param name="pathfindaxManager"></param>
		/// <param name="gridTransformer"></param>
		/// <param name="interval">The update interval in milliseconds.</param>
		public DynamicPotentialField(IPathfindaxManager pathfindaxManager, GridTransformer gridTransformer, float interval) : base(gridTransformer)
		{
			_dynamicPotentialFieldUpdater = new DynamicPotentialFieldUpdater(pathfindaxManager, this, interval);
			PotentialArray = new Array2D<float>(gridTransformer.GridSize.X, gridTransformer.GridSize.Y);
		}

		public void Dispose()
		{
			_dynamicPotentialFieldUpdater.Dispose();
		}

		public void AddPotentialFunction(object key, PotentialFunction potentialFunction)
		{
			_valueProviders[key] = potentialFunction;
		}

		public void RemovePotentialFunction(object key)
		{
			_valueProviders.Remove(key);
		}

		private void AddPotential(PotentialFunction potentialFunction)
		{
			potentialFunction.UpdateGridPosition(GridTransformer);
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
				AddPotential(valueProvider.Value);
			}
		}

		public override float GetPotential(int x, int y)
		{
			if (x >= 0 && y >= 0 && x < PotentialArray.Width && y < PotentialArray.Height)
			{
				var value = PotentialArray[x, y];
				return value;
			}
			return float.NaN;
		}
	}
}