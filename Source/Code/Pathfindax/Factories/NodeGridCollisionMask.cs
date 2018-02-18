using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public class NodeGridCollisionMask
	{
		public int Width { get; private set; }
		public int Height { get; private set; }
		public NodeGridCollisionLayer[] Layers { get; private set; }

		public NodeGridCollisionMask(PathfindaxCollisionCategory collisionCategory, int width, int height)
		{
			Initialize(new []{collisionCategory}, width, height);
		}

		public NodeGridCollisionMask(PathfindaxCollisionCategory[] collisionCategories, int width, int height)
		{
			Initialize(collisionCategories, width, height);
		}

		private void Initialize(PathfindaxCollisionCategory[] collisionCategories, int width, int height)
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