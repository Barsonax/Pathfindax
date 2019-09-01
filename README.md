# Pathfindax
[![Discord](https://img.shields.io/discord/569232642105540608.svg)](https://discord.gg/cKFnjjk) [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Pathfindax/) [![Build Status](https://dev.azure.com/Barsonax/Pathfindax/_apis/build/status/Pathfindax%20CI?branchName=master)](https://dev.azure.com/Barsonax/Pathfindax/_build/latest?definitionId=10&branchName=master) ![Azure DevOps tests (branch)](https://img.shields.io/azure-devops/tests/Barsonax/Pathfindax/10/master.svg) [![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=Barsonax_Pathfindax&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=Barsonax_Pathfindax) [![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=Barsonax_Pathfindax&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=Barsonax_Pathfindax) [![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=Barsonax_Pathfindax&metric=security_rating)](https://sonarcloud.io/dashboard?id=Barsonax_Pathfindax) ![coverage](https://img.shields.io/azure-devops/coverage/Barsonax/Pathfindax/10/master.svg)

## Features
Pathfindax is a pathfinding framework that can be used to get a path to a destination in a network of nodes. Currently A*, potential fields and flowfield are implemented. These implementations support the following features:
- Support for up to 32 collision layers 
- Support for multiple agent sizes
- Support for movement costs 
- Support for the duality game engine and the tilemap plugin through the `Duality.Plugins.Pathfindax.core` and `Duality.Plugins.Pathfindax.Tilemaps.core` nuget packages

Some examples of what pathfindax can do:

<img src="https://media.giphy.com/media/4SY68jssujAxnvZOZs/giphy.gif" width="300" height="300" /> <img src="https://media.giphy.com/media/8PabCMR1PCmcdIH8mP/giphy.gif" width="300" height="300" />

## Getting Started

### Installing
Pathfindax can be installed through the nuget packages which you can find at the bottom of this readme. When using duality there are also some extra packages you can install to make it easier to use pathfindax in duality. If you just want to use pathfindax you only have to install the `Pathfindax` nuget package.

For more info on how to install nuget packages see [this](https://docs.microsoft.com/en-us/nuget/consume-packages/ways-to-install-a-package). 
For more info on how to install duality packages see [this](https://github.com/AdamsLair/duality/wiki/Package-Management).

### A Simple example
The following example will show you how to create a nodegrid and find a path through it:
```cs
//Setup the nodegrid and pathfinder.
var pathfindaxManager = new PathfindaxManager();
var factory = new DefinitionNodeGridFactory();
var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, 3, 3);
var nodeNetwork = new DefinitionNodeGrid(nodeGrid, new Vector2(1, 1));
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
Console.ReadKey();
```

More examples can be found [here](https://github.com/Barsonax/Pathfindax/blob/master/Source/Code/Pathfindax.Example/Program.cs).

### Pathfindax inside duality
The duality packages make it easier to use pathfindax by abstracting most of the boilerplate code you see in the example above. A tutorial covering how to use pathfindax in duality can be found [here](https://github.com/Barsonax/Pathfindax/wiki/Using-pathfindax-with-duality-tilemaps). 
Additionally some example components can be found [here](https://github.com/Barsonax/Pathfindax/tree/master/Source/Code/Duality.Plugins.Pathfindax.Examples/Components).

## Other
    
### Nuget
| Library | Version |
|-------------|--------|
| Pathfindax      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Pathfindax/) |
| Duality.Plugins.Pathfindax.core      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Duality.Plugins.Pathfindax.core/)|
| Duality.Plugins.Pathfindax.Tilemaps.core      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Duality.Plugins.Pathfindax.Tilemaps.core/)|

### Donations
Donations can be done through my Patreon page: https://www.patreon.com/rickthephotogrammer
