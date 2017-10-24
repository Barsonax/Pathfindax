namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Interface for providing a path. For instance so that it can be visualized with the <see cref="PathVisualizer"/>
	/// </summary>
	public interface IPathProvider
	{
		/// <summary>
		/// The path.
		/// </summary>
		Vector2[] Path { get; }
	}
}
