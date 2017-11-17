using System;
using System.Collections.Generic;
using Duality.Resources;
using Pathfindax.PathfindEngine;
#pragma warning disable 1591

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

		private List<float> foo = new List<float>();
		protected override void OnBeforeUpdate()
		{
			base.OnBeforeUpdate();
			PathfindaxEngine.Update(Time.LastDelta);
			foo.Add(Time.LastDelta);
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
