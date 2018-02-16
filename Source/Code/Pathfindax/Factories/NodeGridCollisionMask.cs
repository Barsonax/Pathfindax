using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public class NodeGridCollisionMask
	{
		public int Width { get; }
		public int Height { get; }
		public NodeGridCollisionLayer[] Layers { get; }

		public NodeGridCollisionMask(PathfindaxCollisionCategory collisionCategory, int width, int height)
		{
			Width = width;
			Height = height;
			Layers = new NodeGridCollisionLayer[1];
			Layers[0] = new NodeGridCollisionLayer(collisionCategory, width, height);
		}

		public NodeGridCollisionMask(PathfindaxCollisionCategory[] collisionCategories, int width, int height)
		{
			Width = width;
			Height = height;
			Layers = new NodeGridCollisionLayer[collisionCategories.Length];
			for (int i = 0; i < Layers.Length; i++)
			{
				Layers[i] = new NodeGridCollisionLayer(collisionCategories[i], width, height);
			}
		}
	}
}