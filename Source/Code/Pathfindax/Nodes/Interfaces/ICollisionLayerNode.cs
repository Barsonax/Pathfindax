namespace Pathfindax.Nodes
{
	public interface ICollisionLayerNode
	{
		DefinitionNode DefinitionNode { get; }
		float Clearance { get; set; }
	}
}
