# Pathfindax
Pathfindax is a pathfinding framework that can be used to get a path from A to B in a network of nodes. By default the framework provides a implementation of a grid based A* algorithm with the following features:  
-Both pathfinding and nodegrid generation is multithreaded  
-Support for up to 32 collision layers  
-Support for multiple agent sizes  
-Support for movement penalties  
-Built in support for the duality tilemap plugin 

There is also a non grid based A* algorithm which has the above features except for the agent sizes and tilemap support.

However you are free to implement the interfaces yourself to use a different algorithm.

While the main goal was to provide a easy way to use pathfinding in duality most of the implementation is in a separate dll which can also be used without duality.

You can find some tutorials on the [wiki](https://github.com/Barsonax/Pathfindax/wiki). The source also contains some examples to show how you can use Pathfindax. More will be added in the future.
  
### Build status: 
| Branch | Status |
|-------------|--------|
| master      | [![Build status](https://ci.appveyor.com/api/projects/status/0h8kc3pk5s0p1jir/branch/master?svg=true)](https://ci.appveyor.com/project/Barsonax/pathfindax/branch/master) |
| develop      | [![Build status](https://ci.appveyor.com/api/projects/status/0h8kc3pk5s0p1jir/branch/develop?svg=true)](https://ci.appveyor.com/project/Barsonax/pathfindax/branch/develop) |

  
### Nuget
| Library | Version |
|-------------|--------|
| Pathfindax      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Pathfindax/) |
| Duality.Plugins.Pathfindax.core      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Duality.Plugins.Pathfindax.core/)|
| Duality.Plugins.Pathfindax.Tilemaps.core      | [![NuGet Badge](https://buildstats.info/nuget/Pathfindax)](https://www.nuget.org/packages/Duality.Plugins.Pathfindax.Tilemaps.core/)|


