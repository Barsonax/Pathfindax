using System;
using System.Linq;
using Duality.Resources;
using Pathfindax.PathfindEngine;
using Pathfindax.Threading;

#pragma warning disable 1591

namespace Duality.Plugins.Pathfindax
{
	/// <summary>
	/// Defines a Duality core plugin.
	/// </summary>
	public class PathfindaxDualityCorePlugin : CorePlugin
	{
		private readonly PathfindaxManager _pathfindaxManager = new PathfindaxManager(new UpdatableSynchronizationContext());

		public static PathfindaxManager PathfindaxManager
		{
			get
			{
				var pathfindaxDualityCorePlugin = DualityApp.PluginManager.LoadedPlugins.OfType<PathfindaxDualityCorePlugin>().FirstOrDefault();
				return pathfindaxDualityCorePlugin._pathfindaxManager;
			}
		}

		/// <summary>
		/// Creates a new <see cref="PathfindaxDualityCorePlugin"/> and does some initialization work
		/// </summary>
		public PathfindaxDualityCorePlugin()
		{
			Scene.Leaving += Scene_Leaving;			
		}

		protected override void OnBeforeUpdate()
		{
			base.OnBeforeUpdate();
			_pathfindaxManager.Update(Time.DeltaTime);
		}

		protected override void OnDisposePlugin()
		{
			Scene.Leaving -= Scene_Leaving;
			base.OnDisposePlugin();
		}

		private void Scene_Leaving(object sender, EventArgs e)
		{
			_pathfindaxManager.Clear();
		}
	}
}
