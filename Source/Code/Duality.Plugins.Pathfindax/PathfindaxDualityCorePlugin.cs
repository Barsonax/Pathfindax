using System;
using Duality.Resources;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax
{
	/// <summary>
	/// Defines a Duality core plugin.
	/// </summary>
	public class PathfindaxDualityCorePlugin : CorePlugin
	{
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
			PathfindaxEngine.Update();
		}

		protected override void OnDisposePlugin()
		{
			Scene.Leaving -= Scene_Leaving;
			base.OnDisposePlugin();
		}

		private static void Scene_Leaving(object sender, EventArgs e)
		{
			PathfindaxEngine.Clear();
		}
	}
}
