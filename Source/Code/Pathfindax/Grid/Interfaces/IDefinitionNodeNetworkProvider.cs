namespace Pathfindax.Grid
{
	/// <summary>
	/// Interface for classes that can provide <typeparamref name="TNodeNetwork"/> which will be used as base information for other nodenetworks when for pathfinding
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public interface IDefinitionNodeNetworkProvider<out TNodeNetwork> 
		where TNodeNetwork : IDefinitionNodeNetwork
	{
		/// <summary>
		/// Generates the <typeparamref name="TNodeNetwork"></typeparamref>
		/// </summary>
		/// <returns>The <typeparamref name="TNodeNetwork"></typeparamref></returns>
		TNodeNetwork GenerateGrid2D();
	}
}
