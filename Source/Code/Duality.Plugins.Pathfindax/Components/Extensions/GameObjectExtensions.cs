using Pathfindax.Graph;

namespace Duality.Plugins.Pathfindax.Components.Extensions
{
	public static class GameObjectExtensions
	{
		public static TDefinitionNodeNetwork GetDefinitionNodeNetwork<TDefinitionNodeNetwork>(this GameObject gameObj)
			where TDefinitionNodeNetwork : class, IDefinitionNodeNetwork
		{
			var definitionNodeNetworkProvider = gameObj.GetComponent<IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>>();
			if (definitionNodeNetworkProvider == null)
			{
				Logs.Game.WriteError($"{gameObj.Name}: Could not find a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)}.");
				return null;
			}
			var definitionNodeNetwork = definitionNodeNetworkProvider.GenerateGrid2D();
			if (definitionNodeNetwork == null)
			{
				Logs.Game.WriteError($"{gameObj.Name}: Found a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)} but it could not generate a nodenetwork.");
				return null;
			}
			return definitionNodeNetwork;
		}
	}
}
