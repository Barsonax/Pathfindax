<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2546774786">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3758048268">
        <_items dataType="Array" type="Duality.Component[]" id="3153800356" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="2604052004">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2546774786</gameobj>
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
          <item dataType="Struct" type="Duality.Components.SoundListener" id="284460017">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2546774786</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="4093161263">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">1000</focusDist>
            <gameobj dataType="ObjectRef">2546774786</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1775317395">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="565413094" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="414354816">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="673237198">
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
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
            <priority dataType="Int">0</priority>
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3076848374" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1408226438">
            <item dataType="Type" id="1448104832" value="Duality.Components.Transform" />
            <item dataType="Type" id="1224160462" value="Duality.Components.Camera" />
            <item dataType="Type" id="3655857436" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4251706170">
            <item dataType="ObjectRef">2604052004</item>
            <item dataType="ObjectRef">4093161263</item>
            <item dataType="ObjectRef">284460017</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2604052004</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3797127174">2JtnXV8x10iQbejOfGJEIw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2532558428">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3392138034">
        <_items dataType="Array" type="Duality.Component[]" id="2720956368" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" id="1180704140">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_NodeGridVisualizer_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_ShowNodeGrid_x003E_k__BackingField dataType="Bool">true</_x003C_ShowNodeGrid_x003E_k__BackingField>
            <_x003C_SourceNodeNetwork_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2532558428</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.SourceNodeGridProvderMockupComponent" id="2682946987">
            <_sourceNodeGrid />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2532558428</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2036453194" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2719137832">
            <item dataType="Type" id="1819430316" value="Duality.Plugins.Pathfindax.Examples.Components.SourceNodeGridProvderMockupComponent" />
            <item dataType="Type" id="145425334" value="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4045265566">
            <item dataType="ObjectRef">2682946987</item>
            <item dataType="ObjectRef">1180704140</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4106389780">Us/paualiEijGzZBs5vaBA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">AStarPathfinderComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3722181769">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3719019467">
        <_items dataType="Array" type="Duality.Component[]" id="4252602870" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" id="3274627541">
            <_frameCounter dataType="Int">0</_frameCounter>
            <_gridPathfinderProxy />
            <_randomGenerator dataType="Struct" type="System.Random" id="2433592613">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="2222538390">0, 1913677982, 195051343, 984369963, 399979191, 1928009724, 489956584, 492085928, 914007529, 587956798, 716377560, 839210581, 1712081260, 37888562, 1967516137, 985794150, 1629849060, 1756352948, 1709525997, 1567527269, 294145154, 1446449498, 2033048504, 1186782606, 1641988831, 221926937, 290614763, 263460979, 461576274, 1813902820, 1628345585, 835872650, 982287757, 1259116771, 307457291, 1378423470, 1447206770, 959069193, 778206994, 1769611824, 23660801, 1456914761, 1754083414, 1215181879, 222358558, 1084850404, 874485330, 951891639, 544642381, 1314253149, 631704427, 2120174446, 1152944166, 1631863689, 1709435207, 1941495191</SeedArray>
            </_randomGenerator>
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">480</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="None" value="0" />
            <_x003C_FramesBetweenRequest_x003E_k__BackingField dataType="Int">0</_x003C_FramesBetweenRequest_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3722181769</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="859886671">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3722181769</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2767444552" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2821765601">
            <item dataType="Type" id="846766446" value="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" />
            <item dataType="Type" id="1820145098" value="Duality.Plugins.Pathfindax.Components.PathVisualizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3108608032">
            <item dataType="ObjectRef">3274627541</item>
            <item dataType="ObjectRef">859886671</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4063218547">W69hU8gVHUeC6ngSEmW3Zg==</data>
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
