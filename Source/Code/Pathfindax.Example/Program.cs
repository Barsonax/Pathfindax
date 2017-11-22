using System;
using Duality;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Example
{
	class Program
	{
		static void Main(string[] args)
		{
			PollingExample();
			CallbackExample();
		}

		private static void PollingExample()
		{
			Console.WriteLine(nameof(PollingExample));

			//Setup the nodegrid and pathfinder.
			var pathfindaxManager = new PathfindaxManager();
			var nodeNetwork = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var pathfinder = pathfindaxManager.CreateAstarPathfinder(nodeNetwork);

			//Request a path.
			var pathRequest = pathfinder.RequestPath(nodeNetwork.NodeGrid[0, 0], nodeNetwork.NodeGrid[2, 0]);
			Console.WriteLine($"Solving path from {pathRequest.PathStart.Position} to {pathRequest.PathEnd.Position}...");

			//Poll the status to check when the pathfinder is finished.
			while (pathRequest.Status == PathRequestStatus.Solving) { } 
			switch (pathRequest.Status)
			{
				case PathRequestStatus.Solved:
					Console.WriteLine($"Solved path! {pathRequest.CompletedPath}");
					break;
				case PathRequestStatus.NoPathFound:
					Console.WriteLine("Could not find a path");
					break;
			}
			Console.WriteLine($"{nameof(PollingExample)} completed. Press any key to continue with the next example.");
			Console.ReadKey();
		}

		private static void CallbackExample()
		{
			Console.WriteLine(nameof(CallbackExample));

			//Setup the nodegrid and pathfinder.
			var pathfindaxManager = new PathfindaxManager();
			var nodeNetwork = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var pathfinder = pathfindaxManager.CreateAstarPathfinder(nodeNetwork);

			//Request a path.
			var pathRequest = pathfinder.RequestPath(nodeNetwork.NodeGrid[0, 0], nodeNetwork.NodeGrid[2, 0]);
			Console.WriteLine($"Solving path from {pathRequest.PathStart.Position} to {pathRequest.PathEnd.Position}...");

			//Add a callback to the request that will be called then the pathfinder is done.
			var callbackCalled = false;
			pathRequest.AddCallback(request =>
			{
				Console.WriteLine($"Solved path! {request.CompletedPath}");
				callbackCalled = true;
			});

			//Start calling update on the manager. Update will call the callbacks of any completed paths. Note that the callback is called from the thread that calls update!
			while (!callbackCalled)
			{
				pathfindaxManager.Update(1f); 
			}
			Console.WriteLine($"{nameof(CallbackExample)} completed. Press any key to continue with the next example.");
			Console.ReadKey();
		}
	}
}
