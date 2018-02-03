using System;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;
using Pathfindax.Paths;

namespace Pathfindax.Example
{
	class Program
	{
		static void Main(string[] args)
		{
			PollingExample();
			CallbackExample();
			AsyncExample();
			Console.ReadKey();
		}

		private static void AsyncExample()
		{
			Console.WriteLine(nameof(AsyncExample));

			//Setup the nodegrid and pathfinder.
			var pathfindaxManager = new PathfindaxManager();
			var nodeNetwork = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var pathfinder = pathfindaxManager.CreateAstarPathfinder(nodeNetwork, new ManhattanDistance());

			var exampleGameObject = new ExampleAsyncGameObject(pathfinder);
			//Start calling update on the manager. Update will call the callbacks of any completed paths. Note that the callback is called from the thread that calls update.
			//Normally when using pathfindax in a game engine you would wire this up in your game loop.
			while (!exampleGameObject.CallBackCalled)
			{			
				pathfindaxManager.Update(1f);
				exampleGameObject.Update();
			}
			Console.ReadKey();
		}

		private static void PollingExample()
		{
			Console.WriteLine(nameof(PollingExample));

			//Setup the nodegrid and pathfinder.
			var pathfindaxManager = new PathfindaxManager();
			var nodeNetwork = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var pathfinder = pathfindaxManager.CreateAstarPathfinder(nodeNetwork, new ManhattanDistance());

			//Request a path.
			var pathRequest = pathfinder.RequestPath(nodeNetwork.NodeGrid.ToIndex(0, 0), nodeNetwork.NodeGrid.ToIndex(2, 0));
			Console.WriteLine($"Solving path from {pathRequest.PathStart} to {pathRequest.PathEnd}...");

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
			var pathfinder = pathfindaxManager.CreateAstarPathfinder(nodeNetwork, new ManhattanDistance());

			//Request a path.
			var pathRequest = pathfinder.RequestPath(nodeNetwork.NodeGrid.ToIndex(0, 0), nodeNetwork.NodeGrid.ToIndex(2, 0));
			Console.WriteLine($"Solving path from {pathRequest.PathStart} to {pathRequest.PathEnd}...");

			//Add a callback to the request that will be called then the pathfinder is done.
			var callbackCalled = false;
			pathRequest.AddCallback(request =>
			{
				Console.WriteLine($"Solved path! {request.CompletedPath}");
				callbackCalled = true;
			});

			//Start calling update on the manager. Update will call the callbacks of any completed paths. Note that the callback is called from the thread that calls update.
			//Normally when using pathfindax in a game engine you would wire this up in your game loop.
			while (!callbackCalled)
			{
				pathfindaxManager.Update(1f); 
			}
			Console.WriteLine($"{nameof(CallbackExample)} completed. Press any key to continue with the next example.");
			Console.ReadKey();
		}
	}

	public class ExampleAsyncGameObject
	{
		public bool CallBackCalled { get; private set; }
		private readonly IPathfinder<NodePath> _pathfinder;

		public ExampleAsyncGameObject(IPathfinder<NodePath> pathfinder)
		{
			_pathfinder = pathfinder;
		}

		public async void Update()
		{
			//Request a path.
			var pathRequest = _pathfinder.RequestPath(new Vector2(0, 0), new Vector2(2, 0));
			Console.WriteLine($"Solving path from {pathRequest.PathStart} to {pathRequest.PathEnd}...");

			//Await the pathrequest
			var completedPath = await pathRequest;
			Console.WriteLine($"Solved path! {completedPath}");
			Console.WriteLine("ASyncExample completed. Press any key to continue with the next example.");
			CallBackCalled = true;
		}
	}
}
