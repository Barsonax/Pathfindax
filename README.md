# Pathfindax
Pathfindax is a pathfinding framework that can be used to get a path to a destination in a network of nodes. Currently A*, potential fields and flowfield are implemented. These implementations support the following features:
- Support for up to 32 collision layers 
- Support for multiple agent sizes
- Support for movement costs 
- Built in support for the duality tilemap plugin

Its also possible to use dynamic pathfinding if you use potential fields. A example of this is shown in the video below:
![](https://thumbs.gfycat.com/PinkCriminalEmperorshrimp-size_restricted.gif)

You can find some examples on how to use pathfindax in duality [here](https://github.com/Barsonax/Pathfindax/tree/master/Source/Code/Duality.Plugins.Pathfindax.Examples/Components).

Most of the implementation is in a separate dll which can also be used without duality and only depends on the DualityPrimitives package. A example of using pathfindax in a console app can be found ![here](https://github.com/Barsonax/Pathfindax/blob/master/Source/Code/Pathfindax.Example/Program.cs).
  
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


