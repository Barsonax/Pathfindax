<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2586665865">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="101739723">
        <_items dataType="Array" type="Duality.Component[]" id="2012713974" length="8">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.DefinitionNodeNetworkProviderMockupComponent" id="2677810919">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2586665865</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.NonGridMouseClickPathfinder" id="1982292920">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="1673634481">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">10000</farZ>
              <focusDist dataType="Float">500</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="127248004">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2922131195">
                  <_items dataType="Array" type="Duality.Component[]" id="749461078" length="4">
                    <item dataType="Struct" type="Duality.Components.Transform" id="184525222">
                      <active dataType="Bool">true</active>
                      <angle dataType="Float">0</angle>
                      <angleAbs dataType="Float">0</angleAbs>
                      <angleVel dataType="Float">0</angleVel>
                      <angleVelAbs dataType="Float">0</angleVelAbs>
                      <deriveAngle dataType="Bool">true</deriveAngle>
                      <gameobj dataType="ObjectRef">127248004</gameobj>
                      <ignoreParent dataType="Bool">false</ignoreParent>
                      <parentTransform />
                      <pos dataType="Struct" type="Duality.Vector3">
                        <X dataType="Float">500</X>
                        <Y dataType="Float">500</Y>
                        <Z dataType="Float">-10</Z>
                      </pos>
                      <posAbs dataType="Struct" type="Duality.Vector3">
                        <X dataType="Float">500</X>
                        <Y dataType="Float">500</Y>
                        <Z dataType="Float">-10</Z>
                      </posAbs>
                      <scale dataType="Float">1</scale>
                      <scaleAbs dataType="Float">1</scaleAbs>
                      <vel dataType="Struct" type="Duality.Vector3" />
                      <velAbs dataType="Struct" type="Duality.Vector3" />
                    </item>
                    <item dataType="ObjectRef">1673634481</item>
                  </_items>
                  <_size dataType="Int">2</_size>
                </compList>
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4198308776" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="1165923089">
                      <item dataType="Type" id="3506868974" value="Duality.Components.Transform" />
                      <item dataType="Type" id="6192586" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="447824800">
                      <item dataType="ObjectRef">184525222</item>
                      <item dataType="ObjectRef">1673634481</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">184525222</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="3940348547">efoiT4xJU0e/LtJhe6G1HA==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="659140733">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2741714726" length="4">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3210282240">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3937919438">
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
            </_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" id="378963951">
              <_x003C_AmountOfThreads_x003E_k__BackingField dataType="Int">1</_x003C_AmountOfThreads_x003E_k__BackingField>
              <_x003C_Heuristic_x003E_k__BackingField dataType="Struct" type="Pathfindax.Algorithms.ManhattanDistance" id="453066723" />
              <_x003C_MaxClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxClearance_x003E_k__BackingField>
              <active dataType="Bool">true</active>
              <gameobj dataType="ObjectRef">2586665865</gameobj>
            </_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2586665865</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="4019338063">
            <_pathVisualization dataType="Struct" type="Pathfindax.Visualization.PathVisualization" id="3925734703">
              <_vectorFieldVisualization dataType="Struct" type="Pathfindax.Visualization.VectorFieldVisualization" id="2670735598">
                <_x003C_Color_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">255</B>
                  <G dataType="Byte">255</G>
                  <R dataType="Byte">255</R>
                </_x003C_Color_x003E_k__BackingField>
                <_x003C_Transformer_x003E_k__BackingField />
                <_x003C_Vectors_x003E_k__BackingField />
              </_vectorFieldVisualization>
              <_waypointPathVisualization dataType="Struct" type="Pathfindax.Visualization.WaypointPathVisualization" id="4118731210">
                <_x003C_End_x003E_k__BackingField />
                <_x003C_LineColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">0</B>
                  <G dataType="Byte">255</G>
                  <R dataType="Byte">0</R>
                </_x003C_LineColor_x003E_k__BackingField>
                <_x003C_Path_x003E_k__BackingField />
                <_x003C_Start_x003E_k__BackingField />
                <_x003C_StartColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">255</B>
                  <G dataType="Byte">255</G>
                  <R dataType="Byte">255</R>
                </_x003C_StartColor_x003E_k__BackingField>
                <_x003C_TargetColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">0</B>
                  <G dataType="Byte">0</G>
                  <R dataType="Byte">0</R>
                </_x003C_TargetColor_x003E_k__BackingField>
                <_x003C_Transformer_x003E_k__BackingField />
                <_x003C_WaypointColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">255</B>
                  <G dataType="Byte">0</G>
                  <R dataType="Byte">0</R>
                </_x003C_WaypointColor_x003E_k__BackingField>
              </_waypointPathVisualization>
            </_pathVisualization>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2586665865</gameobj>
          </item>
          <item dataType="ObjectRef">378963951</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" id="2498494768">
            <_collisionCategory dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2586665865</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2040561736" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2764448481">
            <item dataType="Type" id="1272785774" value="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" />
            <item dataType="Type" id="1615501770" value="Duality.Plugins.Pathfindax.Examples.Components.NonGridMouseClickPathfinder" />
            <item dataType="Type" id="697156958" value="Duality.Plugins.Pathfindax.Components.PathVisualizer" />
            <item dataType="Type" id="350779226" value="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" />
            <item dataType="Type" id="595368718" value="Duality.Plugins.Pathfindax.Examples.Components.DefinitionNodeNetworkProviderMockupComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3972132384">
            <item dataType="ObjectRef">378963951</item>
            <item dataType="ObjectRef">1982292920</item>
            <item dataType="ObjectRef">4019338063</item>
            <item dataType="ObjectRef">2498494768</item>
            <item dataType="ObjectRef">2677810919</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1457369203">UKTAh3N4e0OazFAn+MkMWw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">AstarPathfinderComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">127248004</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
