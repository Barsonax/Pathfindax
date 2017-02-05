<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2218316588">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="204330338">
        <_items dataType="Array" type="Duality.Component[]" id="2164229008" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="283664224">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">244</X>
              <Y dataType="Float">244</Y>
              <Z dataType="Float">-10</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">244</X>
              <Y dataType="Float">244</Y>
              <Z dataType="Float">-10</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="2755592395">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">1000</focusDist>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1953624159">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2964416622" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3109205584">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1530359150">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="2871797959">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4074603914" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1268744184">
            <item dataType="Type" id="3377025388" value="Duality.Components.Transform" />
            <item dataType="Type" id="2197903414" value="Duality.Components.Camera" />
            <item dataType="Type" id="2020071480" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1433375198">
            <item dataType="ObjectRef">283664224</item>
            <item dataType="ObjectRef">2755592395</item>
            <item dataType="ObjectRef">2871797959</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">283664224</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3799211172">2JtnXV8x10iQbejOfGJEIw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4178544606">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1370696648">
        <_items dataType="Array" type="Duality.Component[]" id="1337592428" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AStarPathfinderComponent" id="3562285132">
            <_counter dataType="Int">0</_counter>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_NodeGridVisualizer_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_ShowNodeGrid_x003E_k__BackingField dataType="Bool">true</_x003C_ShowNodeGrid_x003E_k__BackingField>
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4178544606</gameobj>
          </item>
          <item dataType="Struct" type="Pathfindax.Duality.Examples.Components.SourceNodeNetworkProviderMockupComponent" id="2677313600">
            <_nodeGrids />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4178544606</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">6</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1636012766" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1084007562">
            <item dataType="Type" id="2136671200" value="Duality.Plugins.Pathfindax.Components.AStarPathfinderComponent" />
            <item dataType="Type" id="705039246" value="Pathfindax.Duality.Examples.Components.SourceNodeNetworkProviderMockupComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="35239194">
            <item dataType="ObjectRef">3562285132</item>
            <item dataType="ObjectRef">2677313600</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3345782122">Us/paualiEijGzZBs5vaBA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">AStarPathfinderComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1051322400">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3240090790">
        <_items dataType="Array" type="Duality.Component[]" id="4159377920" length="4">
          <item dataType="Struct" type="Pathfindax.Duality.Examples.Components.PathfindaxPathSpammerComponent" id="2343656864">
            <_counter dataType="Int">0</_counter>
            <_randomGenerator dataType="Struct" type="System.Random" id="3446103216">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="2577413052">0, 642566450, 474699041, 1563423995, 1590875391, 1228720585, 55132583, 2117708979, 739010703, 1840307123, 744840235, 499069106, 1098974900, 1591308122, 201757061, 884926202, 1867304189, 1998989686, 333310858, 1759290362, 784445648, 1628572313, 1701187676, 529943810, 1135733014, 1266390487, 115399794, 2032472083, 2084373663, 195218753, 1273904552, 1515118629, 89871769, 2086560206, 31096913, 1160438290, 1737507663, 816568464, 253400106, 529643847, 1435709269, 2049333418, 1479448, 987555617, 365279993, 1036945650, 525611094, 276811182, 1661025461, 1314689003, 1133202269, 1281825992, 1006787071, 1050818126, 1791677648, 326360762</SeedArray>
            </_randomGenerator>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">480</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="None" value="0" />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_PathfinderProxy_x003E_k__BackingField dataType="Struct" type="Duality.Plugins.Pathfindax.PathfindEngine.PathfinderProxy" id="66465646">
              <_pathfinderComponent />
              <_x003C_PathfinderId_x003E_k__BackingField />
            </_x003C_PathfinderProxy_x003E_k__BackingField>
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1051322400</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2208336826" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="296592660">
            <item dataType="Type" id="2007410788" value="Pathfindax.Duality.Examples.Components.PathfindaxPathSpammerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2746678">
            <item dataType="ObjectRef">2343656864</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1901340592">W69hU8gVHUeC6ngSEmW3Zg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfindaxPathSpammerComponent</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
