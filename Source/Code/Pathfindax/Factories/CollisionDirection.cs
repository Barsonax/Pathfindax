using System;

namespace Pathfindax.Factories
{
	[Flags]
	public enum CollisionDirection : byte
	{
		/// <summary>
		/// This node has no collisions
		/// </summary>
		Free = 0,

		/// <summary>
		/// When going to the top node there will be a collision
		/// </summary>
		Top = 1,
		/// <summary>
		/// When going to the bottom node there will be a collision
		/// </summary>
		Bottom = 2,
		/// <summary>
		/// When going to the left node there will be a collision
		/// </summary>
		Left = 4,
		/// <summary>
		/// When going to the right node there will be a collision
		/// </summary>
		Right = 8,
		//
		// Summary:
		//     A solid diagonal edge from the tiles bottom left to its top right corner is assumed.
		DiagonalUp = 16,
		//
		// Summary:
		//     A solid diagonal edge from the tiles top left to its bottom right corner is assumed.
		DiagonalDown = 32,
		/// <summary>
		/// All directions will have a collision
		/// </summary>
		Solid = 63
	}
}