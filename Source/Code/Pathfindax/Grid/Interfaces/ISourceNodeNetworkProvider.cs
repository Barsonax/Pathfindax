namespace Pathfindax.Grid
{
	public interface ISourceNodeNetworkProvider<out TNodeNetwork> 
		where TNodeNetwork : INodeNetworkBase
	{
		TNodeNetwork GenerateGrid2D();
	}
}
