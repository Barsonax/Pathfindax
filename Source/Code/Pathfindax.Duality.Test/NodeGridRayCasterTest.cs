using System.Collections.Generic;
using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;
using Xunit;

namespace Pathfindax.Duality.Test
{
	public class NodeGridRayCasterTest
	{
		public Scene SetupScene()
		{
			var scene = new Scene();
			Scene.SwitchTo(new ContentRef<Scene>(scene));
			return scene;
		}

		[Fact]
		public void RayCast_DualityEnvironment_Passes()
		{
			var scene = SetupScene();
			var obj = new GameObject("Object");
			obj.AddComponent<Transform>();
			var body = obj.AddComponent<RigidBody>();
			body.BodyType = BodyType.Static; //Rigidbody has to be a static one if we want to use chain and polygon shapes
			body.AddShape(new ChainShapeInfo(new List<Vector2> { new Vector2(0, 0), new Vector2(1f, 0) }));
			scene.AddObject(obj);
			var hits = new RawList<RayCastData>();
			RigidBody.RayCast(new Vector2(0.5f, 1f), new Vector2(0.5f, -1f), hitData => hitData.Fraction, hits);
			Assert.Single(hits);
		}
	}
}

