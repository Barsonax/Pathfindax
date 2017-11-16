using System;
using System.Collections.Generic;
using Duality;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public class DynamicPotentialField : PotentialField, IUpdatable
	{
		public class ValueProvider
		{
			public Func<Vector2> WorldPosition;
			public Func<Vector2, float> Formula;
			public int Size;

			public ValueProvider(Func<Vector2> worldPosition, Func<Vector2, float> formula, int size)
			{
				WorldPosition = worldPosition;
				Formula = formula;
				Size = size;
			}
		}

		private readonly List<ValueProvider> _valueProviders = new List<ValueProvider>();

		public DynamicPotentialField(GridTransformer gridTransformer, Point2 targetNode) : base(gridTransformer, targetNode) { }

		public void Register()
		{
			PathfindaxEngine.AddUpdatable(this);
		}

		public void AddPotential(Func<Vector2> worldPosition, Func<Vector2, float> formula, int size)
		{
			_valueProviders.Add(new ValueProvider(worldPosition, formula, size));
		}

		private void AddPotential(ValueProvider valueProvider)
		{
			var worldPosition = valueProvider.WorldPosition.Invoke();
			var gridCoords = GridTransformer.TransformToGridCoords(worldPosition);
			for (var valueY = -valueProvider.Size; valueY <= valueProvider.Size; valueY++)
			{
				for (var valueX = -valueProvider.Size; valueX <= valueProvider.Size; valueX++)
				{
					var coords = gridCoords + new Point2(valueX, valueY);
					if (coords.X >= 0 && coords.Y >= 0 && coords.X < PotentialArray.Width && coords.Y < PotentialArray.Height)
					{
						var worldCoords = GridTransformer.TransformToWorldCoords(coords);
						var value = valueProvider.Formula.Invoke(worldCoords);
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