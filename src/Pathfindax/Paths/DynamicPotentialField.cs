using System;
using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Paths
{
	public class DynamicPotentialField : IDisposable
	{
		public event Event<DynamicPotentialField> Disposed;
		private readonly Dictionary<object, PotentialFunction> _valueProviders = new Dictionary<object, PotentialFunction>();

		public Array2D<float> Array { get; }
		public GridTransformer GridTransformer { get; }

		/// <summary>
		/// Creates a new <see cref="DynamicPotentialField"/>
		/// </summary>
		/// <param name="pathfindaxManager"></param>
		/// <param name="gridTransformer"></param>
		/// <param name="interval">The update interval in milliseconds.</param>
		public DynamicPotentialField(IPathfindaxManager pathfindaxManager, GridTransformer gridTransformer, float interval) 
		{
			GridTransformer = gridTransformer;
			Array = new Array2D<float>(gridTransformer.GridSize.X, gridTransformer.GridSize.Y);
			pathfindaxManager.CreatePotentialFieldUpdater(this, interval);
		}

		public void Dispose()
		{
			Disposed?.Invoke(this);
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
					if (coords.X >= 0 && coords.Y >= 0 && coords.X < Array.Width && coords.Y < Array.Height)
					{
						var value = potentialFunction.GetValue(coords.X, coords.Y);
						Array[coords.X, coords.Y] += value;
					}
				}
			}
		}

		public void Update()
		{
			for (var i = 0; i < Array.Length; i++)
			{
				Array[i] = 0f;
			}
			foreach (var valueProvider in _valueProviders)
			{
				AddPotential(valueProvider.Value);
			}
		}
	}
}