﻿using Pathfindax.PathfindEngine;

namespace Pathfindax.Duality
{
	public interface IPathfinderComponent : IPathfinder
	{
		string PathfinderId { get; }
	}
}