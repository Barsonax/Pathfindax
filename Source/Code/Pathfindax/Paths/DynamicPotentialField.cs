using System;
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

		public void AddPotential(Func<Vector2> worldPosition, int range, float strength)
		{
			_valueProviders.Add(new PotentialFunction(GridTransformer, worldPosition, range, strength));
		}

		public class PotentialFunction
		{			
			private readonly GridTransformer _gridTransformer;
			private readonly Func<Vector2> _worldPositionProvider;
			public int Range { get; }
			public float Strength { get; }
			public Point2 GridPosition { get; set; }
			public Vector2 FloatGridPosition { get; private set; }

			public PotentialFunction(GridTransformer gridTransformer, Func<Vector2> worldPositionProvider, int range, float strength)
			{
				_gridTransformer = gridTransformer;
				Range = range;
				_worldPositionProvider = worldPositionProvider;
				Strength = strength;
			}

			public void UpdateGridPosition()
			{
				var worldPosition = _worldPositionProvider.Invoke();
				FloatGridPosition = _gridTransformer.TransformToFloatGridCoords(worldPosition.X, worldPosition.Y);
				GridPosition = _gridTransformer.TransformToGridCoords(worldPosition);
			}

			public float GetValue(int x, int y)
			{
				var distance = new Vector2(FloatGridPosition.X - x, FloatGridPosition.Y - y).Length;
				var value = (-MathF.Pow(distance, 2) + Range) * Strength;
				if (value < 0) value = 0f;
				return value;
			}
		}

		private void AddPotential(PotentialFunction potentialFunction)
		{
			potentialFunction.UpdateGridPosition();
			for (var valueY = -potentialFunction.Range; valueY <= potentialFunction.Range; valueY++)
			{
				for (var valueX = -potentialFunction.Range; valueX <= potentialFunction.Range; valueX++)
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