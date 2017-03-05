using System;
using System.IO;
using Duality;
using Duality.Backend;
using Duality.Serialization;
using NUnit.Framework;
using NUnit.Framework.Interfaces;

namespace Pathfindax.Duality.Test
{
	[AttributeUsage(AttributeTargets.Assembly)]
	public class InitDualityAttribute : Attribute, ITestAction
	{
		private string _oldEnvDir;
		private INativeWindow _dummyWindow;
		private TextWriterLogOutput _consoleLogOutput;

		public ActionTargets Targets => ActionTargets.Suite;

		public InitDualityAttribute() { }
		public void BeforeTest(ITest details)
		{
			Console.WriteLine("----- Beginning Duality environment setup -----");

			// Set environment directory to Duality binary directory
			_oldEnvDir = Environment.CurrentDirectory;
			var codeBaseUri = typeof(DualityApp).Assembly.CodeBase;
			var codeBasePath = codeBaseUri.StartsWith("file:") ? codeBaseUri.Remove(0, "file:".Length) : codeBaseUri;
			codeBasePath = codeBasePath.TrimStart('/');
			Console.WriteLine("Testing Core Assembly: {0}", codeBasePath);
			Environment.CurrentDirectory = Path.GetDirectoryName(codeBasePath);

			// Add some Console logs manually for NUnit
			if (_consoleLogOutput == null)
				_consoleLogOutput = new TextWriterLogOutput(Console.Out);
			Log.AddGlobalOutput(_consoleLogOutput);

			// Initialize Duality
			DualityApp.Init(
				DualityApp.ExecutionEnvironment.Launcher,
				DualityApp.ExecutionContext.Game,
				new DefaultPluginLoader(),
				null);

			// Create a dummy window, to get access to all the device contexts
			if (_dummyWindow == null)
			{
				var options = new WindowOptions
				{
					Width = 800,
					Height = 600
				};
				_dummyWindow = DualityApp.OpenWindow(options);
			}

			// Load local testing memory
			TestHelper.LocalTestMemory = Serializer.TryReadObject<TestMemory>(TestHelper.LocalTestMemoryFilePath, typeof(XmlSerializer));

			Console.WriteLine("----- Duality environment setup complete -----");
		}
		public void AfterTest(ITest details)
		{
			Console.WriteLine("----- Beginning Duality environment teardown -----");

			// Remove NUnit Console logs
			Log.RemoveGlobalOutput(_consoleLogOutput);
			_consoleLogOutput = null;

			if (_dummyWindow != null)
			{
				ContentProvider.ClearContent();
				ContentProvider.DisposeDefaultContent();
				_dummyWindow.Dispose();
				_dummyWindow = null;
			}

			/*// Save local testing memory. As this uses Duality serializers, 
			// it needs to be done before terminating Duality.
			if (TestContext.CurrentContext.Result.Outcome.Status == TestStatus.Passed && !System.Diagnostics.Debugger.IsAttached)
			{
				Serializer.WriteObject(TestHelper.LocalTestMemory, TestHelper.LocalTestMemoryFilePath, typeof(XmlSerializer));
			}*/

			try
			{
				DualityApp.Terminate();
			}
			catch (BackendException)
			{
				
			}
			
			Environment.CurrentDirectory = _oldEnvDir;

			Console.WriteLine("----- Duality environment teardown complete -----");
		}
	}
}
