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
          <item dataType="Struct" type="Pathfindax.Duality.Components.AStarPathfinderComponent" id="3501153114">
            <_counter dataType="Int">0</_counter>
            <_nodeGridVisualizer />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4178544606</gameobj>
          </item>
          <item dataType="Struct" type="Pathfindax.Duality.Test.Components.SourceNodeNetworkProviderMockupComponent" id="3862741169">
            <_nodeGrids />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4178544606</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1636012766" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1084007562">
            <item dataType="Type" id="2136671200" value="Pathfindax.Duality.Components.AStarPathfinderComponent" />
            <item dataType="Type" id="705039246" value="Pathfindax.Duality.Test.Components.SourceNodeNetworkProviderMockupComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="35239194">
            <item dataType="ObjectRef">3501153114</item>
            <item dataType="ObjectRef">3862741169</item>
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
          <item dataType="Struct" type="Pathfindax.Duality.Test.Components.PathfindaxPathSpammerComponent" id="3950684807">
            <_counter dataType="Int">0</_counter>
            <_randomGenerator dataType="Struct" type="System.Random" id="2912207747">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="886615846">0, 2121625965, 1032726510, 1172887387, 1032489729, 1467918603, 1091279665, 1377467324, 171487572, 159920582, 2059636245, 1931534089, 284365861, 30415593, 1735065066, 173846878, 708561462, 1096345253, 52543779, 691840997, 1754782590, 1422454471, 1060494904, 1757400041, 315502074, 635384538, 805387598, 270286384, 1689705899, 652712600, 1917565354, 1967917884, 1793171820, 190706108, 1764461743, 1634306653, 702096174, 244785286, 1408896233, 1308166187, 562738389, 1104842717, 552933098, 1894404676, 1243454263, 2034005964, 1863581760, 421427769, 1584431206, 1037512074, 198230766, 576511591, 1705987349, 1685712986, 2033235297, 600903667</SeedArray>
            </_randomGenerator>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">480</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_PathfinderProxy_x003E_k__BackingField dataType="Struct" type="Pathfindax.Duality.PathfindEngine.PathfinderProxy" id="559630776">
              <_pathfinderComponent />
              <_x003C_PathfinderId_x003E_k__BackingField />
            </_x003C_PathfinderProxy_x003E_k__BackingField>
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1051322400</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2208336826" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="296592660">
            <item dataType="Type" id="2007410788" value="Pathfindax.Duality.Test.Components.PathfindaxPathSpammerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2746678">
            <item dataType="ObjectRef">3950684807</item>
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
