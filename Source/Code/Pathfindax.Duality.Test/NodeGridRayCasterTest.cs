using System.Collections.Generic;
using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Duality.Grid;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Test
{
	[TestFixture]
	public class NodeGridRayCasterTest
	{
		public Scene SetupScene()
		{
			var scene = new Scene();
			Scene.SwitchTo(new ContentRef<Scene>(scene));
			return scene;
		}

		[Test]
		public void RayCast_DualityEnvironment_Passes()
		{
			var scene = SetupScene();
			var obj = new GameObject("Object");
			obj.AddComponent<Transform>();
			var body = obj.AddComponent<RigidBody>();
			body.BodyType = BodyType.Static; //Rigidbody has to be a static one if we want to use chain and polygon shapes
			body.AddShape(new ChainShapeInfo(new List<Vector2>() { new Vector2(0, 0), new Vector2(1f, 0) }));
			scene.AddObject(obj);
			RawList<RayCastData> hits;
			RigidBody.RayCast(new Vector2(0.5f, 1f), new Vector2(0.5f, -1f), hitData => hitData.Fraction, out hits);
			Assert.AreEqual(1, hits.Count, "Something is wrong with the duality environment");
		}

		[Test]
		public void GetCollisionCategory_Between2Nodes_CollisionCategoryEqualsRigidbodyCategory()
		{
			var scene = SetupScene();
			var obj = new GameObject("Object");
			obj.AddComponent<Transform>();
			var body = obj.AddComponent<RigidBody>();
			body.CollisionCategory = CollisionCategory.Cat10 | CollisionCategory.Cat1 | CollisionCategory.Cat16;
			body.BodyType = BodyType.Static; //Rigidbody has to be a static one if we want to use chain and polygon shapes
			body.AddShape(new ChainShapeInfo(new List<Vector2>() { new Vector2(0, 0), new Vector2(1f, 0) }));
			scene.AddObject(obj);

			var nodeGridRayCaster = new NodeGridRayCaster();
			var network = Substitute.For<INodeNetwork<INode>>();
			var node1 = new Node(network, new PositionF(0.5f, 1f), true);
			var node2 = new Node(network, new PositionF(0.5f, -1f), true);
			var collisionCategory = nodeGridRayCaster.GetCollisionCategory(node1, node2);
			
			Assert.AreEqual(body.CollisionCategory, (CollisionCategory)collisionCategory);
			Assert.Fail("Forced fail");
		}
	}
}
