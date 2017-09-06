using Duality.Plugins.Pathfindax.Components;
using Duality.Resources;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder.
	/// </summary>
	/// <example>
	/// <code>			
	/// public class PathfinderProxyExample : Component, ICmpInitializable
	///	{
	///		private PathfinderProxy&lt;ISourceNodeGrid&lt;ISourceGridNode&gt;&gt; _pathfinderProxy;
	///
	///		public void OnInit(InitContext context)
	///		{
	///		    if (context == InitContext.Activate &amp;&amp; DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
	///		    {
	///		        _pathfinderProxy = new PathfinderProxy&lt;ISourceNodeGrid&lt;ISourceGridNode&gt;&gt;();
	///		    	//Now you can use _pathfinderProxy.RequestPath(PathRequest) to request a path from the pathfinder
	///		    }
	///		}
	///		
	///		public void OnShutdown(ShutdownContext context) { }
	/// }  
	/// </code>
	/// </example>
	/// <example>
	/// <img src="../media/PathfindProxyDiagram.png" />
	/// </example>
	/// <typeparam name="TSourceNodeNetwork">The type of source network the pathfinder uses</typeparam>
	public class PathfinderProxy<TSourceNodeNetwork>
		where TSourceNodeNetwork : class, ISourceNodeNetwork
	{
		/// <summary>
		/// The id of the pathfinder. You can keep this empty if you only have 1 pathfinder in a <see cref="Scene"/>
		/// </summary>
		public string PathfinderId { get; set; }

		private IPathfinderComponent<TSourceNodeNetwork> _pathfinderComponent;
		/// <summary>
		/// The actual pathfinder
		/// </summary>
		public IPathfinderComponent<TSourceNodeNetwork> PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder<TSourceNodeNetwork>(PathfinderId));

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy{TSourceNodeNetwork}"/> with no id. This will only work if there is only 1 <see cref="IPathfinderComponent"/> in the scene.
		/// </summary>
		public PathfinderProxy() { }

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy{TSourceNodeNetwork}"/>
		/// </summary>
		/// <param name="pathfinderId">The id that will be used to find the <see cref="IPathfinderComponent"/></param>
		public PathfinderProxy(string pathfinderId)
		{
			PathfinderId = pathfinderId;
		}

		/// <summary>
		/// Requests the <see cref="IPathfinderComponent"/> for a new path
		/// </summary>
		/// <param name="pathRequest"></param>
		public void RequestPath(PathRequest pathRequest)
		{
            pathRequest.StartSolvePath(PathfinderComponent);
		}
	}
}