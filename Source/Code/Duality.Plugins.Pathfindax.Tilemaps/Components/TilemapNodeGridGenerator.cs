using System;
using System.Diagnostics;
using System.Linq;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Duality.Plugins.Tilemaps;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
    /// <summary>
    /// Generates a <see cref="INodeGrid{TNode}"/> from <see cref="Tilemap"/>'s.
    /// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
    /// </summary>
    [EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
    public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>, ICmpUpdatable
    {
        [EditorHintFlags(MemberFlags.Invisible)]
        public float BoundRadius { get; }

        /// <summary>
        /// The maximum clearance that will be calculated. For performance reason try to keep this as small as possible and thus should be kept equal to the size of your largest agent in nodes.
        /// </summary>
        public int MaxCalculatedClearance { get; set; }

        /// <summary>
        /// The movement penalties per tile which can be used to make the pathfinder try to avoid certain nodes. The index of the value in the array is equal to the index of the tile.
        /// </summary>
        public byte[] MovementPenalties { get; set; }

        private long _counter;
        private NodeGridVisualizer _nodeGridVisualizer;
        private INodeGrid<IGridNode> _nodeGrid;

        public INodeGrid<IGridNode> GenerateGrid2D()
        {
            if (_counter < 2) throw new Exception("The nodegrid is not yet initialized please call this later");
            if (_nodeGrid == null)
            {
                var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
                var baseTilemap = tilemaps.FirstOrDefault();
                if (baseTilemap == null) throw new ArgumentException("No tilemaps found in gameobject children!");
                var sourceNodeGridFactory = new SourceNodeGridFactory();
                var offset = -new Vector2((baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X) - baseTilemap.Tileset.Res.TileSize.X, (baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y) - baseTilemap.Tileset.Res.TileSize.Y) / 2;
                var nodeGridRayCaster = new NodeGridRayCaster();
                _nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new PositionF(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridConnections.All, new PositionF(offset.X, offset.Y));
                for (int y = 0; y < baseTilemap.Size.Y; y++)
                {
                    for (int x = 0; x < baseTilemap.Size.X; x++)
                    {
                        var node = _nodeGrid.NodeArray[x, y];
                        if (MovementPenalties != null && baseTilemap.Tiles[x, y].Index < MovementPenalties.Length)
                            node.MovementPenalty = MovementPenalties[baseTilemap.Tiles[x, y].Index];

                        var neighbours = sourceNodeGridFactory.GetNeighbours(_nodeGrid.NodeArray, node, GenerateNodeGridConnections.All);
                        node.Connections = new NodeConnection<IGridNode>[neighbours.Count];
                        for (int index = 0; index < node.Connections.Length; index++)
                        {
                            var neighbour = neighbours[index];
                            node.Connections[index] = new NodeConnection<IGridNode>(neighbour, nodeGridRayCaster.GetCollisionCategory(node, neighbour));
                        }
                    }
                }
				var watch = new Stopwatch();
				watch.Start();
                foreach (var gridNode in _nodeGrid)
                {
                    gridNode.Clearances = sourceNodeGridFactory.CalculateGridNodeClearances(_nodeGrid, gridNode, MaxCalculatedClearance);
                }
				watch.Stop();
				Debug.WriteLine(watch.ElapsedMilliseconds);
                _nodeGridVisualizer = new NodeGridVisualizer(_nodeGrid);
            }
            return _nodeGrid;
        }

        public bool IsVisible(IDrawDevice device)
        {
            return
(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
        }

        public void Draw(IDrawDevice device)
        {
            if (_nodeGridVisualizer != null)
                _nodeGridVisualizer.Draw(device);
        }

        public void OnUpdate()
        {
            _counter++;
        }
    }
}
