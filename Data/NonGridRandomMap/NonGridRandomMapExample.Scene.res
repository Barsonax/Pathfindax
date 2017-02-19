<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2947802992">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4225078614">
        <_items dataType="Array" type="Duality.Component[]" id="3622944288" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" id="1847461438">
            <_counter dataType="Int">0</_counter>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_NodeNetworkVisualizer_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_ShowNodeGrid_x003E_k__BackingField dataType="Bool">true</_x003C_ShowNodeGrid_x003E_k__BackingField>
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2947802992</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.SourceNodeNetworkProviderMockupComponent" id="1799567436">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2947802992</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.MouseClickPathfinder" id="454929248">
            <_pathfinderProxy />
            <_pathStart />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="4105497301">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">10000</farZ>
              <focusDist dataType="Float">500</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="3568221494">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1775054497">
                  <_items dataType="Array" type="Duality.Component[]" id="3330606190" length="4">
                    <item dataType="Struct" type="Duality.Components.Transform" id="1633569130">
                      <active dataType="Bool">true</active>
                      <angle dataType="Float">0</angle>
                      <angleAbs dataType="Float">0</angleAbs>
                      <angleVel dataType="Float">0</angleVel>
                      <angleVelAbs dataType="Float">0</angleVelAbs>
                      <deriveAngle dataType="Bool">true</deriveAngle>
                      <gameobj dataType="ObjectRef">3568221494</gameobj>
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
                    <item dataType="ObjectRef">4105497301</item>
                  </_items>
                  <_size dataType="Int">2</_size>
                  <_version dataType="Int">2</_version>
                </compList>
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="117803808" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="426395563">
                      <item dataType="Type" id="2234952950" value="Duality.Components.Transform" />
                      <item dataType="Type" id="918892058" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="2253356360">
                      <item dataType="ObjectRef">1633569130</item>
                      <item dataType="ObjectRef">4105497301</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">1633569130</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="2792685985">efoiT4xJU0e/LtJhe6G1HA==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="932041461">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="3166548598" length="4">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="427816928">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2830734222">
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
            </_x003C_Camera_x003E_k__BackingField>
            <_x003C_Clearance_x003E_k__BackingField dataType="Byte">0</_x003C_Clearance_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="None" value="0" />
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2947802992</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">7</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1994780890" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2124087588">
            <item dataType="Type" id="1471973060" value="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" />
            <item dataType="Type" id="4110205846" value="Duality.Plugins.Pathfindax.Examples.Components.SourceNodeNetworkProviderMockupComponent" />
            <item dataType="Type" id="3403430784" value="Duality.Plugins.Pathfindax.Examples.Components.MouseClickPathfinder" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3789210902">
            <item dataType="ObjectRef">1847461438</item>
            <item dataType="ObjectRef">1799567436</item>
            <item dataType="ObjectRef">454929248</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="791662368">UKTAh3N4e0OazFAn+MkMWw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">AstarPathfinderComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">3568221494</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
