namespace Pathfindax.Grid
{
	/// <summary>
	/// Interface for classes that can provide a source <typeparamref name="TNodeNetwork"></typeparamref> to be used for generating the actual <typeparamref name="TNodeNetwork"></typeparamref> for pathfinding
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public interface ISourceNodeNetworkProvider<out TNodeNetwork> 
		where TNodeNetwork : INodeNetworkBase
	{
		/// <summary>
		/// Generates the <typeparamref name="TNodeNetwork"></typeparamref>
		/// </summary>
		/// <returns>The <typeparamref name="TNodeNetwork"></typeparamref></returns>
		TNodeNetwork GenerateGrid2D();
	}
}
