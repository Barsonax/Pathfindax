﻿using System;

namespace Pathfindax.Primitives
{
	/// <summary>
	/// A simple struct to store a x and y coord.
	/// </summary>
	public struct PositionF : IEquatable<PositionF>
	{
		public readonly float X;
		public readonly float Y;

		public PositionF(float x, float y)
		{
			X = x;
			Y = y;
		}

		public float Distance(PositionF position)
		{
			var deltaX = position.X - X;
			var deltaY = position.Y - Y;
			return (float)Math.Sqrt(deltaX * deltaX + deltaY * deltaY);
		}

		public static PositionF operator -(PositionF p1, PositionF p2)
		{
			return new PositionF(p1.X - p2.X, p1.Y - p2.Y);
		}

		public static PositionF operator +(PositionF p1, PositionF p2)
		{
			return new PositionF(p1.X + p2.X, p1.Y + p2.Y);
		}

		public static PositionF operator *(PositionF p1, float factor)
		{
			return new PositionF(p1.X * factor, p1.Y * factor);
		}

		public static bool operator ==(PositionF p1, PositionF p2)
		{
			return p1.X == p2.X && p1.Y == p2.Y;
		}

		public static bool operator !=(PositionF p1, PositionF p2)
		{
			return p1.X != p2.X || p1.Y != p2.Y;
		}

		public bool Equals(PositionF other)
		{
			return X.Equals(other.X) && Y.Equals(other.Y);
		}

		public override bool Equals(object obj)
		{
			if (ReferenceEquals(null, obj)) return false;
			return obj is PositionF && Equals((PositionF)obj);
		}

		public override int GetHashCode()
		{
			unchecked { return (X.GetHashCode() * 397) ^ Y.GetHashCode(); }
		}

		public override string ToString()
		{
			return $"{X}:{Y}";
		}
	}
}