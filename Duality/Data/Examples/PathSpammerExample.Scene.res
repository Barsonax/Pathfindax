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
            <gameobj dataType="ObjectRef">2546774786</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
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
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="4093161263">
            <active dataType="Bool">true</active>
            <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">1000</focusDist>
            <gameobj dataType="ObjectRef">2546774786</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <priority dataType="Int">0</priority>
            <projection dataType="Enum" type="Duality.Drawing.ProjectionMode" name="Perspective" value="1" />
            <renderSetup dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderSetup]]" />
            <renderTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
            <shaderParameters dataType="Struct" type="Duality.Drawing.ShaderParameterCollection" id="1775317395" custom="true">
              <body />
            </shaderParameters>
            <targetRect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">1</H>
              <W dataType="Float">1</W>
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </targetRect>
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="284460017">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2546774786</gameobj>
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
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.DefinitionNodeGridProvderMockupComponent" id="1427648155">
            <_definitionNodeGrid />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2532558428</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" id="324856514">
            <_x003C_AmountOfThreads_x003E_k__BackingField dataType="Int">1</_x003C_AmountOfThreads_x003E_k__BackingField>
            <_x003C_Heuristic_x003E_k__BackingField dataType="Struct" type="Pathfindax.Algorithms.ManhattanDistance" id="3803477850" />
            <_x003C_MaxClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxClearance_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2532558428</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" id="2444387331">
            <_collisionCategory dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2532558428</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2036453194" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2719137832">
            <item dataType="Type" id="1819430316" value="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" />
            <item dataType="Type" id="145425334" value="Duality.Plugins.Pathfindax.Examples.Components.DefinitionNodeGridProvderMockupComponent" />
            <item dataType="Type" id="1121442296" value="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4045265566">
            <item dataType="ObjectRef">324856514</item>
            <item dataType="ObjectRef">1427648155</item>
            <item dataType="ObjectRef">2444387331</item>
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
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">480</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="None" value="0" />
            <_x003C_FramesBetweenRequest_x003E_k__BackingField dataType="Int">0</_x003C_FramesBetweenRequest_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">324856514</_x003C_PathfinderComponent_x003E_k__BackingField>
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3722181769</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="859886671">
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
