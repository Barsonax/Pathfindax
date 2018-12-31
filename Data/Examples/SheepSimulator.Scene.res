<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="3952684871">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2398988261">
        <_items dataType="Array" type="Duality.GameObject[]" id="2114344598" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="23932836">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2116388512">
              <_items dataType="Array" type="Duality.Component[]" id="1628835036" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="81210054">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <gameobj dataType="ObjectRef">23932836</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3524545569">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">23932836</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="577409533" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="3824240934">H4sIAAAAAAAEAO3YoREAMAgDwMiOxf5TMQGuAu7+TXQiU0kqAAAAAAAAAABw2zsZX61otGIJAAAAAGC24hG8EgAAAAAAAAAAAAAAAAAwa9HaYtQIcAAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="897965930">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">23932836</gameobj>
                  <offset dataType="Float">-0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="Flat" value="0" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="40850574" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2114552434">
                  <item dataType="Type" id="4173822160" value="Duality.Components.Transform" />
                  <item dataType="Type" id="1491354222" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="3520771756" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1277560906">
                  <item dataType="ObjectRef">81210054</item>
                  <item dataType="ObjectRef">3524545569</item>
                  <item dataType="ObjectRef">897965930</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">81210054</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="218387778">6vKUTbn6IkSW5HCpPPtf3Q==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">3952684871</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2545817614">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2346239346">
              <_items dataType="Array" type="Duality.Component[]" id="605915344" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2603094832">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <gameobj dataType="ObjectRef">2545817614</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2080747102">
                  <active dataType="Bool">true</active>
                  <allowParent dataType="Bool">false</allowParent>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">2545817614</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1420216350">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3042080400" length="128" />
                    <_size dataType="Int">0</_size>
                  </shapes>
                  <useCCD dataType="Bool">false</useCCD>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="4208636497">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2545817614</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.299999267</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999267</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="2242013109">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3524545569</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="591558730" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="608986984">
                  <item dataType="ObjectRef">4173822160</item>
                  <item dataType="Type" id="3642399276" value="Duality.Components.Physics.RigidBody" />
                  <item dataType="Type" id="2649471926" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2506384670">
                  <item dataType="ObjectRef">2603094832</item>
                  <item dataType="ObjectRef">2080747102</item>
                  <item dataType="ObjectRef">4208636497</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2603094832</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="191879636">ya2Ms8m3OEWDOISXOYkFmw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">WorldGeometry</name>
            <parent dataType="ObjectRef">3952684871</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3380947304">
        <_items dataType="Array" type="Duality.Component[]" id="813695631" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4009962089">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3" />
            <posAbs dataType="Struct" type="Duality.Vector3" />
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="828666520">
            <_movementPenalties />
            <_x003C_ConnectionGenerationMode_x003E_k__BackingField dataType="Enum" type="Pathfindax.Graph.GenerateNodeGridConnections" name="All" value="20" />
            <_x003C_CrossCorners_x003E_k__BackingField dataType="Bool">false</_x003C_CrossCorners_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PotentialFieldPathfinderComponent" id="2166427172">
            <_x003C_AmountOfThreads_x003E_k__BackingField dataType="Int">1</_x003C_AmountOfThreads_x003E_k__BackingField>
            <_x003C_MaxCachedFlowFields_x003E_k__BackingField dataType="Int">100</_x003C_MaxCachedFlowFields_x003E_k__BackingField>
            <_x003C_MaxClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxClearance_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.DynamicPotentialFieldComponent" id="3921926792">
            <_x003C_UpdateInterval_x003E_k__BackingField dataType="Float">100</_x003C_UpdateInterval_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2414404911" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="122282212">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="Type" id="2821304260" value="Duality.Plugins.Pathfindax.Components.PotentialFieldPathfinderComponent" />
            <item dataType="Type" id="2365687190" value="Duality.Plugins.Pathfindax.Components.DynamicPotentialFieldComponent" />
            <item dataType="Type" id="1200435840" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2498106902">
            <item dataType="ObjectRef">4009962089</item>
            <item dataType="ObjectRef">2166427172</item>
            <item dataType="ObjectRef">3921926792</item>
            <item dataType="ObjectRef">828666520</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4009962089</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3179204320">OOoLnC0cL06wmNAtayqttQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2026860486">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2662246160">
        <_items dataType="Array" type="Duality.Component[]" id="3269498684" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2084137704">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.998</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.998</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1561789974">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4216803918">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2096934608" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="820594364">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1561789974</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1619886742">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1561789974</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1018808936">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1561789974</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3495479766">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2026860486</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3612358677">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="1603001729">
              <active dataType="Bool">true</active>
              <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
              <farZ dataType="Float">12000</farZ>
              <focusDist dataType="Float">180</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="56615252">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1999603466">
                  <_items dataType="Array" type="Duality.Component[]" id="2131207392" length="4">
                    <item dataType="Struct" type="Duality.Components.Transform" id="113892470">
                      <active dataType="Bool">true</active>
                      <angle dataType="Float">0</angle>
                      <angleAbs dataType="Float">0</angleAbs>
                      <gameobj dataType="ObjectRef">56615252</gameobj>
                      <ignoreParent dataType="Bool">false</ignoreParent>
                      <pos dataType="Struct" type="Duality.Vector3">
                        <X dataType="Float">0</X>
                        <Y dataType="Float">0</Y>
                        <Z dataType="Float">-10</Z>
                      </pos>
                      <posAbs dataType="Struct" type="Duality.Vector3">
                        <X dataType="Float">0</X>
                        <Y dataType="Float">0</Y>
                        <Z dataType="Float">-10</Z>
                      </posAbs>
                      <scale dataType="Float">1</scale>
                      <scaleAbs dataType="Float">1</scaleAbs>
                    </item>
                    <item dataType="ObjectRef">1603001729</item>
                  </_items>
                  <_size dataType="Int">2</_size>
                </compList>
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3461824026" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="1957280240">
                      <item dataType="ObjectRef">4173822160</item>
                      <item dataType="Type" id="11510588" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="4059605230">
                      <item dataType="ObjectRef">113892470</item>
                      <item dataType="ObjectRef">1603001729</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">113892470</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="4254091596">Bi0BjLD3vEewiNO87xYQAg==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <priority dataType="Int">0</priority>
              <projection dataType="Enum" type="Duality.Drawing.ProjectionMode" name="Perspective" value="1" />
              <renderSetup dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderSetup]]" />
              <renderTarget dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
              <shaderParameters dataType="Struct" type="Duality.Drawing.ShaderParameterCollection" id="1165767254" custom="true">
                <body />
              </shaderParameters>
              <targetRect dataType="Struct" type="Duality.Rect">
                <H dataType="Float">1</H>
                <W dataType="Float">1</W>
                <X dataType="Float">0</X>
                <Y dataType="Float">0</Y>
              </targetRect>
              <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
            </_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="759879098">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1024257262" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3797621090">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="Type" id="917427088" value="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" />
            <item dataType="Type" id="855980782" value="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" />
            <item dataType="Type" id="546191980" value="Duality.Components.Renderers.SpriteRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1081554314">
            <item dataType="ObjectRef">2084137704</item>
            <item dataType="ObjectRef">1561789974</item>
            <item dataType="ObjectRef">3612358677</item>
            <item dataType="ObjectRef">759879098</item>
            <item dataType="ObjectRef">3495479766</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2084137704</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="427309714">/KRmsZt6+EWneO0UhIjMkQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">56615252</item>
    <item dataType="Struct" type="Duality.GameObject" id="3519985856">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2214619270">
        <_items dataType="Array" type="Duality.Component[]" id="3892153216" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3577263074">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3519985856</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98201</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98201</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3054915344">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3519985856</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3936188224">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3097710876">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="347615172">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3054915344</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3054077334">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3054915344</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3300962944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3054915344</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="693637840">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3519985856</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="810516751">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3519985856</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2253004468">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3519985856</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1445600058" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1441972980">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="516046582">
            <item dataType="ObjectRef">3577263074</item>
            <item dataType="ObjectRef">3054915344</item>
            <item dataType="ObjectRef">810516751</item>
            <item dataType="ObjectRef">2253004468</item>
            <item dataType="ObjectRef">693637840</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3577263074</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3797006288">4jH8Z95Zz0m3GT/Z8JqXUg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1593601012">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1595286090">
        <_items dataType="Array" type="Duality.Component[]" id="3470715232" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1650878230">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1593601012</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98301</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98301</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1128530500">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1593601012</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1741570316">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="827562148">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1741824196">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1128530500</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2901048214">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1128530500</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4250835328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1128530500</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3062220292">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1593601012</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3179099203">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1593601012</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="326619624">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1593601012</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2328862874" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3581942576">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3055268462">
            <item dataType="ObjectRef">1650878230</item>
            <item dataType="ObjectRef">1128530500</item>
            <item dataType="ObjectRef">3179099203</item>
            <item dataType="ObjectRef">326619624</item>
            <item dataType="ObjectRef">3062220292</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1650878230</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="58392460">vBFTpPUOX0eiY4/+RWUmIQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3895479366">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3692621200">
        <_items dataType="Array" type="Duality.Component[]" id="3673811260" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3952756584">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3895479366</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98401</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98401</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3430408854">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3895479366</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3934453454">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="400948176">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3757603516">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3430408854</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1867334294">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3430408854</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3975722600">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3430408854</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1069131350">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3895479366</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1186010261">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3895479366</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2628497978">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3895479366</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2221886190" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1480435682">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2452161674">
            <item dataType="ObjectRef">3952756584</item>
            <item dataType="ObjectRef">3430408854</item>
            <item dataType="ObjectRef">1186010261</item>
            <item dataType="ObjectRef">2628497978</item>
            <item dataType="ObjectRef">1069131350</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3952756584</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2352477714">/i5H3Lm2rkaXYmqH34y70A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="567462150">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3486021584">
        <_items dataType="Array" type="Duality.Component[]" id="2317478588" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="624739368">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">567462150</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98501</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98501</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="102391638">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">567462150</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2764181902">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1406902480">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="493906620">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">102391638</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3438961302">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">102391638</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1227621992">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">102391638</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2036081430">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">567462150</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2152960341">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">567462150</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3595448058">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">567462150</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2630378094" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2194829474">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1655274250">
            <item dataType="ObjectRef">624739368</item>
            <item dataType="ObjectRef">102391638</item>
            <item dataType="ObjectRef">2152960341</item>
            <item dataType="ObjectRef">3595448058</item>
            <item dataType="ObjectRef">2036081430</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">624739368</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2920499538">IH3F6Vlw1EGYQ86uPVxiHw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2266306558">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3477884584">
        <_items dataType="Array" type="Duality.Component[]" id="1578544812" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2323583776">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2266306558</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98601</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98601</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1801236046">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2266306558</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1389208726">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3301900832">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1053021148">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1801236046</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3042580758">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1801236046</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1789154632">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1801236046</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3734925838">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2266306558</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3851804749">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2266306558</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="999325170">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2266306558</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="222961566" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1545640810">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2868946138">
            <item dataType="ObjectRef">2323583776</item>
            <item dataType="ObjectRef">1801236046</item>
            <item dataType="ObjectRef">3851804749</item>
            <item dataType="ObjectRef">999325170</item>
            <item dataType="ObjectRef">3734925838</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2323583776</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3927282378">6CSFsPOGFk68DqDSeo7dgw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2852669561">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2101442651">
        <_items dataType="Array" type="Duality.Component[]" id="2290131350" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2909946779">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2852669561</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98701</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98701</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2387599049">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2852669561</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3552695977">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="458992654">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="13902800">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2387599049</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1421726318">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2387599049</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2041953196">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2387599049</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="26321545">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2852669561</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="143200456">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2852669561</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1585688173">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2852669561</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1368309864" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2556884913">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2293875808">
            <item dataType="ObjectRef">2909946779</item>
            <item dataType="ObjectRef">2387599049</item>
            <item dataType="ObjectRef">143200456</item>
            <item dataType="ObjectRef">1585688173</item>
            <item dataType="ObjectRef">26321545</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2909946779</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3745204835">51fT2VYKLEWbNoTbdLa07A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4194877896">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2168145614">
        <_items dataType="Array" type="Duality.Component[]" id="1333775312" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4252155114">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4194877896</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98801</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98801</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3729807384">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4194877896</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3204188904">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3042545196">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="24218852">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3729807384</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3712331286">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3729807384</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1777640160">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3729807384</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1368529880">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4194877896</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1485408791">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4194877896</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2927896508">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4194877896</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1358482250" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2799337356">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2355764726">
            <item dataType="ObjectRef">4252155114</item>
            <item dataType="ObjectRef">3729807384</item>
            <item dataType="ObjectRef">1485408791</item>
            <item dataType="ObjectRef">2927896508</item>
            <item dataType="ObjectRef">1368529880</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4252155114</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1652502808">9pNdT6Avt0Sac8+obhoVSA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="644773524">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3323937322">
        <_items dataType="Array" type="Duality.Component[]" id="540796192" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="702050742">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">644773524</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.989006</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.989006</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="179703012">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">644773524</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1822933868">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="757301092">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3966133188">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">179703012</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2869478806">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">179703012</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3771127424">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">179703012</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2113392804">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">644773524</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2230271715">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">644773524</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3672759432">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">644773524</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2870695898" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4201035024">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3330691310">
            <item dataType="ObjectRef">702050742</item>
            <item dataType="ObjectRef">179703012</item>
            <item dataType="ObjectRef">2230271715</item>
            <item dataType="ObjectRef">3672759432</item>
            <item dataType="ObjectRef">2113392804</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">702050742</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1370181100">pzwbZAeoW0CC1NDYijzFGw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1723903834">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2343993092">
        <_items dataType="Array" type="Duality.Component[]" id="453144900" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1781181052">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1723903834</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9900055</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9900055</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1258833322">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1723903834</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2792128074">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1616847200">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2010848476">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1258833322</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="238799126">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1258833322</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2842043976">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1258833322</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3192523114">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1723903834</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3309402025">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1723903834</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="456922446">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1723903834</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="498846102" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="120905742">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="234249034">
            <item dataType="ObjectRef">1781181052</item>
            <item dataType="ObjectRef">1258833322</item>
            <item dataType="ObjectRef">3309402025</item>
            <item dataType="ObjectRef">456922446</item>
            <item dataType="ObjectRef">3192523114</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1781181052</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3647879998">ClzLR3kBxEeyiXhq5vlFwA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4139811548">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2953951154">
        <_items dataType="Array" type="Duality.Component[]" id="2065942224" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4197088766">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4139811548</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9910049</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9910049</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3674741036">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4139811548</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2878878676">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4226491620">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3241506756">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3674741036</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3583767958">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3674741036</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2965314176">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3674741036</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1313463532">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4139811548</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1430342443">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4139811548</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2872830160">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4139811548</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1099166282" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="74350248">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1395384222">
            <item dataType="ObjectRef">4197088766</item>
            <item dataType="ObjectRef">3674741036</item>
            <item dataType="ObjectRef">1430342443</item>
            <item dataType="ObjectRef">2872830160</item>
            <item dataType="ObjectRef">1313463532</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4197088766</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4247796884">7Kc7C6nKzkqApde05NQWhg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="940035514">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1244847652">
        <_items dataType="Array" type="Duality.Component[]" id="4086879940" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="997312732">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">940035514</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9920044</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9920044</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="474965002">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">940035514</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2156887402">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="583045664">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="818181084">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">474965002</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4142635286">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">474965002</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2783130952">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">474965002</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2408654794">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">940035514</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2525533705">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">940035514</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3968021422">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">940035514</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2378003734" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1699964270">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2656536010">
            <item dataType="ObjectRef">997312732</item>
            <item dataType="ObjectRef">474965002</item>
            <item dataType="ObjectRef">2525533705</item>
            <item dataType="ObjectRef">3968021422</item>
            <item dataType="ObjectRef">2408654794</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">997312732</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1114987358">Fk3xM0l9LEuvfr2Tcrua2g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="822028504">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2860942654">
        <_items dataType="Array" type="Duality.Component[]" id="2705197584" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="879305722">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">822028504</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9930038</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9930038</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="356957992">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">822028504</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2618593176">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2637993004">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3655357668">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">356957992</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1556241942">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">356957992</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2805537504">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">356957992</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2290647784">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">822028504</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2407526695">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">822028504</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3850014412">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">822028504</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2336700938" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1820240668">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2971033110">
            <item dataType="ObjectRef">879305722</item>
            <item dataType="ObjectRef">356957992</item>
            <item dataType="ObjectRef">2407526695</item>
            <item dataType="ObjectRef">3850014412</item>
            <item dataType="ObjectRef">2290647784</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">879305722</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1252251784">whcFu4gyv0GRH/gF7pnqOw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1962827783">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3785654821">
        <_items dataType="Array" type="Duality.Component[]" id="3531330710" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2020105001">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1962827783</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.994</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.994</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1497757271">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1962827783</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2100409143">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2286830222">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3791386832">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1497757271</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4169351790">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1497757271</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3594008236">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1497757271</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3431447063">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1962827783</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3548325974">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1962827783</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="695846395">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1962827783</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3915572072" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="238515919">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2752184928">
            <item dataType="ObjectRef">2020105001</item>
            <item dataType="ObjectRef">1497757271</item>
            <item dataType="ObjectRef">3548325974</item>
            <item dataType="ObjectRef">695846395</item>
            <item dataType="ObjectRef">3431447063</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2020105001</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4121275677">N9y0/pJHH0+CK2xJI6piLg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4073303249">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2238917683">
        <_items dataType="Array" type="Duality.Component[]" id="2653608486" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4130580467">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4073303249</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.995</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.995</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3608232737">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4073303249</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4163510369">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3423013230">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4086564944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3608232737</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2558708078">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3608232737</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2935064108">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3608232737</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1246955233">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4073303249</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1363834144">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4073303249</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2806321861">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4073303249</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4105650360" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3067416153">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3830091776">
            <item dataType="ObjectRef">4130580467</item>
            <item dataType="ObjectRef">3608232737</item>
            <item dataType="ObjectRef">1363834144</item>
            <item dataType="ObjectRef">2806321861</item>
            <item dataType="ObjectRef">1246955233</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4130580467</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1923118619">pRG5WWReCUKfRHIAuCgClQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3380463852">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1397694882">
        <_items dataType="Array" type="Duality.Component[]" id="527907088" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3437741070">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3380463852</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.996</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.996</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2915393340">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3380463852</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="185951044">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3660269124">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3968391748">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2915393340</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3254373014">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2915393340</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="657371136">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2915393340</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="554115836">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3380463852</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="670994747">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3380463852</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2113482464">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3380463852</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3383533834" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2423731256">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1457410782">
            <item dataType="ObjectRef">3437741070</item>
            <item dataType="ObjectRef">2915393340</item>
            <item dataType="ObjectRef">670994747</item>
            <item dataType="ObjectRef">2113482464</item>
            <item dataType="ObjectRef">554115836</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3437741070</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3996303972">NWWG/FQHski2LPSTZrDG0g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="805072464">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2089218294">
        <_items dataType="Array" type="Duality.Component[]" id="494830816" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="862349682">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">805072464</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.997</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.997</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="340001952">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">805072464</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3052125040">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2951181628">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2585550660">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">340001952</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3061952150">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">340001952</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2714224384">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">340001952</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2273691744">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">805072464</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2390570655">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">805072464</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3833058372">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">805072464</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3370032666" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2036357060">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3294197142">
            <item dataType="ObjectRef">862349682</item>
            <item dataType="ObjectRef">340001952</item>
            <item dataType="ObjectRef">2390570655</item>
            <item dataType="ObjectRef">3833058372</item>
            <item dataType="ObjectRef">2273691744</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">862349682</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2853796480">V1nrGD+nL0OL9wCBEaTIvQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="210066019">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1179612369">
        <_items dataType="Array" type="Duality.Component[]" id="2321850606" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="267343237">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">210066019</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98101</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98101</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4039962803">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">210066019</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3183246291">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2081651302">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="273304448">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4039962803</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="625726670">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">4039962803</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="924065052">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">4039962803</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1678685299">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">210066019</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1795564210">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">210066019</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3238051927">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">210066019</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3675243936" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4241029371">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3289578408">
            <item dataType="ObjectRef">267343237</item>
            <item dataType="ObjectRef">4039962803</item>
            <item dataType="ObjectRef">1795564210</item>
            <item dataType="ObjectRef">3238051927</item>
            <item dataType="ObjectRef">1678685299</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">267343237</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3935549681">1ZEFy/DqZEGaKUy250GwzQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2907438805">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3172426663">
        <_items dataType="Array" type="Duality.Component[]" id="3749511118" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2964716023">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2907438805</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98001</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.98001</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2442368293">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2907438805</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="711263237">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1334293078">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1400178720">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2442368293</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1838519182">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2442368293</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2710115132">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2442368293</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="81090789">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2907438805</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="197969700">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2907438805</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1640457417">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2907438805</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="194180096" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3254829965">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="368000952">
            <item dataType="ObjectRef">2964716023</item>
            <item dataType="ObjectRef">2442368293</item>
            <item dataType="ObjectRef">197969700</item>
            <item dataType="ObjectRef">1640457417</item>
            <item dataType="ObjectRef">81090789</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2964716023</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2648418919">4NS1aE39y0C6Di2MUDZeog==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1554982318">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="739794168">
        <_items dataType="Array" type="Duality.Component[]" id="488905580" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1612259536">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1554982318</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97901</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97901</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1089911806">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1554982318</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2275975238">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3574597632">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3220990108">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1089911806</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1227127318">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1089911806</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="395532040">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1089911806</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3023601598">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1554982318</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3140480509">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1554982318</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="288000930">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1554982318</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1246635998" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2794372410">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3690534586">
            <item dataType="ObjectRef">1612259536</item>
            <item dataType="ObjectRef">1089911806</item>
            <item dataType="ObjectRef">3140480509</item>
            <item dataType="ObjectRef">288000930</item>
            <item dataType="ObjectRef">3023601598</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1612259536</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1667908154">5YRDV8AXh0GsL6g/WSx/yg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1146568411">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2781431977">
        <_items dataType="Array" type="Duality.Component[]" id="2801683470" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1203845629">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1146568411</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97801</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97801</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="681497899">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1146568411</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1544815403">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="655344118">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3797376736">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">681497899</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1113714574">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">681497899</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1831793148">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">681497899</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2615187691">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1146568411</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2732066602">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1146568411</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="4174554319">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1146568411</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3775441344" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3842062883">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2700804216">
            <item dataType="ObjectRef">1203845629</item>
            <item dataType="ObjectRef">681497899</item>
            <item dataType="ObjectRef">2732066602</item>
            <item dataType="ObjectRef">4174554319</item>
            <item dataType="ObjectRef">2615187691</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1203845629</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="639030409">cVvopNwE70y5p81zuByd2w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2435863046">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2609960656">
        <_items dataType="Array" type="Duality.Component[]" id="3939051196" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2493140264">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2435863046</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97701</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97701</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1970792534">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2435863046</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1780415630">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3298079952">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="31668924">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1970792534</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3427943062">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1970792534</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3363075688">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1970792534</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3904482326">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2435863046</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4021361237">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2435863046</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1168881658">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2435863046</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="455020142" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1212671394">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="803860746">
            <item dataType="ObjectRef">2493140264</item>
            <item dataType="ObjectRef">1970792534</item>
            <item dataType="ObjectRef">4021361237</item>
            <item dataType="ObjectRef">1168881658</item>
            <item dataType="ObjectRef">3904482326</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2493140264</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="427162706">xLmzmjixs0O58Xi9SmSm/g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4252022651">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2133653001">
        <_items dataType="Array" type="Duality.Component[]" id="472531598" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="14332573">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4252022651</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97601</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97601</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3786952139">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4252022651</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2091880203">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="329621110">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="814479328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3786952139</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="233411470">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3786952139</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2931017468">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3786952139</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1425674635">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4252022651</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1542553546">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4252022651</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2985041263">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4252022651</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1014459968" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2793132227">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2672738488">
            <item dataType="ObjectRef">14332573</item>
            <item dataType="ObjectRef">3786952139</item>
            <item dataType="ObjectRef">1542553546</item>
            <item dataType="ObjectRef">2985041263</item>
            <item dataType="ObjectRef">1425674635</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">14332573</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3422055145">M/HYaZQYzkmxVsrCuc8Grg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1547231223">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2406935733">
        <_items dataType="Array" type="Duality.Component[]" id="387186422" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1604508441">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1547231223</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97501</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97501</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1082160711">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1547231223</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="424602855">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2379053390">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1045906128">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1082160711</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4204693102">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1082160711</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2691547308">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1082160711</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3015850503">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1547231223</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3132729414">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1547231223</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="280249835">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1547231223</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2466765640" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1743260319">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3009957408">
            <item dataType="ObjectRef">1604508441</item>
            <item dataType="ObjectRef">1082160711</item>
            <item dataType="ObjectRef">3132729414</item>
            <item dataType="ObjectRef">280249835</item>
            <item dataType="ObjectRef">3015850503</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1604508441</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1467877901">qQtijmlgS0mmzErkYrzt+w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3483343906">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="516671980">
        <_items dataType="Array" type="Duality.Component[]" id="1085545060" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3540621124">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3483343906</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9740143</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9740143</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3018273394">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3483343906</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1428456162">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="992989328">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3136685372">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3018273394</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1675776918">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3018273394</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="826997736">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3018273394</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="656995890">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3483343906</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="773874801">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3483343906</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2216362518">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3483343906</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3410356022" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3961032230">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2175792826">
            <item dataType="ObjectRef">3540621124</item>
            <item dataType="ObjectRef">3018273394</item>
            <item dataType="ObjectRef">773874801</item>
            <item dataType="ObjectRef">2216362518</item>
            <item dataType="ObjectRef">656995890</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3540621124</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1718368550">Je2evXw2UUGAzWYgIpOBlA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4264462314">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2522774388">
        <_items dataType="Array" type="Duality.Component[]" id="1626129828" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="26772236">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4264462314</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9730148</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9730148</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3799391802">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4264462314</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2417489626">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1639073024">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1354209948">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3799391802</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="139174422">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3799391802</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4180167944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3799391802</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1438114298">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4264462314</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1554993209">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4264462314</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2997480926">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4264462314</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4033894390" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2822006366">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2819559690">
            <item dataType="ObjectRef">26772236</item>
            <item dataType="ObjectRef">3799391802</item>
            <item dataType="ObjectRef">1554993209</item>
            <item dataType="ObjectRef">2997480926</item>
            <item dataType="ObjectRef">1438114298</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">26772236</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2631014318">8LD1UGG6y0267TvhHUMfmA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3142574416">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4130021878">
        <_items dataType="Array" type="Duality.Component[]" id="2878545632" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3199851634">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3142574416</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9720154</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9720154</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2677503904">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3142574416</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="985402992">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3843498300">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2705076036">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2677503904</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="54513302">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2677503904</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3950147328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2677503904</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="316226400">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3142574416</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="433105311">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3142574416</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1875593028">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3142574416</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="561798170" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1507858628">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2784684950">
            <item dataType="ObjectRef">3199851634</item>
            <item dataType="ObjectRef">2677503904</item>
            <item dataType="ObjectRef">433105311</item>
            <item dataType="ObjectRef">1875593028</item>
            <item dataType="ObjectRef">316226400</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3199851634</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2546786688">1yvvypF8pUCmDzq9xIYqmw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1672814729">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2264328139">
        <_items dataType="Array" type="Duality.Component[]" id="1208029686" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1730091947">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1672814729</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9710159</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.9710159</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1207744217">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1672814729</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4203417721">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1190995790">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2668090064">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1207744217</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="131516014">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1207744217</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="856920236">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1207744217</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3141434009">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1672814729</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3258312920">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1672814729</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="405833341">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1672814729</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3337116232" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1266519521">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3206064160">
            <item dataType="ObjectRef">1730091947</item>
            <item dataType="ObjectRef">1207744217</item>
            <item dataType="ObjectRef">3258312920</item>
            <item dataType="ObjectRef">405833341</item>
            <item dataType="ObjectRef">3141434009</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1730091947</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="917972851">wJajhNPf2Eum57l/gDGBuA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3007873954">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="148208492">
        <_items dataType="Array" type="Duality.Component[]" id="4214607716" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3065151172">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3007873954</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97002</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.97002</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2542803442">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3007873954</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3005177186">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3538117520">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1846860092">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2542803442</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3654828950">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2542803442</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3356284904">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2542803442</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="181525938">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3007873954</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="298404849">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3007873954</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1740892566">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3007873954</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2116045878" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1493284262">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2580646330">
            <item dataType="ObjectRef">3065151172</item>
            <item dataType="ObjectRef">2542803442</item>
            <item dataType="ObjectRef">298404849</item>
            <item dataType="ObjectRef">1740892566</item>
            <item dataType="ObjectRef">181525938</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3065151172</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2835784102">dBHEFz4LD0yWpGzmIWeCAA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2722737287">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="765033125">
        <_items dataType="Array" type="Duality.Component[]" id="1258233238" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2780014505">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2722737287</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96902</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96902</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2257666775">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2722737287</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2177199543">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="317416846">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3592734928">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2257666775</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1152008814">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2257666775</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3955279532">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2257666775</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="4191356567">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2722737287</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="13268182">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2722737287</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1455755899">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2722737287</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1174514792" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4255356239">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2704449632">
            <item dataType="ObjectRef">2780014505</item>
            <item dataType="ObjectRef">2257666775</item>
            <item dataType="ObjectRef">13268182</item>
            <item dataType="ObjectRef">1455755899</item>
            <item dataType="ObjectRef">4191356567</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2780014505</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="496407709">xOCRobsXCEeubdiIh59Yyw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2447679943">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1143048805">
        <_items dataType="Array" type="Duality.Component[]" id="116261782" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2504957161">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">2447679943</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96802</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96802</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1982609431">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2447679943</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="184801143">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1495023502">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1120773328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1982609431</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="442708590">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1982609431</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3541932716">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1982609431</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3916299223">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">2447679943</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4033178134">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2447679943</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="1180698555">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2447679943</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2948820584" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3430156559">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2018709472">
            <item dataType="ObjectRef">2504957161</item>
            <item dataType="ObjectRef">1982609431</item>
            <item dataType="ObjectRef">4033178134</item>
            <item dataType="ObjectRef">1180698555</item>
            <item dataType="ObjectRef">3916299223</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2504957161</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="40397405">GZj2QnI9dUGJGj5oO/uHvw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4174021342">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3853536456">
        <_items dataType="Array" type="Duality.Component[]" id="1294365292" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4231298560">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4174021342</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96702</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96702</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3708950830">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4174021342</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3535501942">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4208814048">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2398211036">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3708950830</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2191485206">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3708950830</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3858767176">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3708950830</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1347673326">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4174021342</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1464552237">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4174021342</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2907039954">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4174021342</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="96508638" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1092486026">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="893595930">
            <item dataType="ObjectRef">4231298560</item>
            <item dataType="ObjectRef">3708950830</item>
            <item dataType="ObjectRef">1464552237</item>
            <item dataType="ObjectRef">2907039954</item>
            <item dataType="ObjectRef">1347673326</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4231298560</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3322345578">OAD+nS3fq02pCI58dWQQiw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1303085692">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="21378578">
        <_items dataType="Array" type="Duality.Component[]" id="3441626704" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1360362910">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">1303085692</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96602</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96602</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="838015180">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1303085692</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3165352180">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2729658532">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3503653060">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">838015180</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="653802390">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">838015180</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1964816768">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">838015180</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2771704972">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">1303085692</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2888583883">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1303085692</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="36104304">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1303085692</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3414001610" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3032518728">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="477534430">
            <item dataType="ObjectRef">1360362910</item>
            <item dataType="ObjectRef">838015180</item>
            <item dataType="ObjectRef">2888583883</item>
            <item dataType="ObjectRef">36104304</item>
            <item dataType="ObjectRef">2771704972</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1360362910</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3940947636">RBPvBUGbAk+NTIErKKeiTg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3864188679">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3671252773">
        <_items dataType="Array" type="Duality.Component[]" id="3084110486" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3921465897">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">3864188679</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96502</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96502</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3399118167">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3864188679</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3022047287">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1204646542">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3519486160">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3399118167</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4204364398">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3399118167</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="534697644">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3399118167</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1037840663">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3864188679</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1154719574">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3864188679</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2597207291">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3864188679</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="399043944" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3225608655">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1338268256">
            <item dataType="ObjectRef">3921465897</item>
            <item dataType="ObjectRef">3399118167</item>
            <item dataType="ObjectRef">1154719574</item>
            <item dataType="ObjectRef">2597207291</item>
            <item dataType="ObjectRef">1037840663</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3921465897</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3197442589">cdAQdW6f3k20PLNfZRISeg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="631236544">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="244961670">
        <_items dataType="Array" type="Duality.Component[]" id="422881152" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="688513762">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">631236544</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96402</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.96402</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="166166032">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">631236544</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3843465280">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2792330012">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3912878020">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">166166032</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4075115926">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">166166032</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1726196352">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">166166032</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2099855824">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">631236544</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2216734735">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">631236544</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="3659222452">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">631236544</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3605268282" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="813196276">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="727001846">
            <item dataType="ObjectRef">688513762</item>
            <item dataType="ObjectRef">166166032</item>
            <item dataType="ObjectRef">2216734735</item>
            <item dataType="ObjectRef">3659222452</item>
            <item dataType="ObjectRef">2099855824</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">688513762</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3120325328">BMmkgwdtVUG8L60wzsXKIQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Sheep</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4224256850">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="365408188">
        <_items dataType="Array" type="Duality.Component[]" id="2556294724" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4281534068">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <gameobj dataType="ObjectRef">4224256850</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">25.41249</X>
              <Y dataType="Float">443.1519</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">25.41249</X>
              <Y dataType="Float">443.1519</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.25</scale>
            <scaleAbs dataType="Float">0.25</scaleAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3759186338">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">100</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4224256850</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1025207698">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2109918800">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2989694396">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3759186338</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.00280762</X>
                    <Y dataType="Float">70.2329254</Y>
                  </position>
                  <radius dataType="Float">55.0014954</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="896191126">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3759186338</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-1.72580719</X>
                    <Y dataType="Float">9.283676</Y>
                  </position>
                  <radius dataType="Float">59.66797</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3200613224">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3759186338</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0.78125</X>
                    <Y dataType="Float">-77.96188</Y>
                  </position>
                  <radius dataType="Float">40.64221</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </shapes>
            <useCCD dataType="Bool">false</useCCD>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1397908834">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4224256850</gameobj>
            <offset dataType="Float">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\sheep.Material.res</contentPath>
            </sharedMat>
            <spriteIndex dataType="Int">-1</spriteIndex>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1514787745">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">5</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4224256850</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.TurnToMoveDirection" id="2957275462">
            <_rigidBody />
            <_x003C_TurnSpeed_x003E_k__BackingField dataType="Float">0.05</_x003C_TurnSpeed_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4224256850</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1543849622" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="275229334">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
            <item dataType="ObjectRef">546191980</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="625816794">
            <item dataType="ObjectRef">4281534068</item>
            <item dataType="ObjectRef">3759186338</item>
            <item dataType="ObjectRef">1514787745</item>
            <item dataType="ObjectRef">2957275462</item>
            <item dataType="ObjectRef">1397908834</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4281534068</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3439170358">3vLxMPPl3EaoI6WWmjhx/g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Dog</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3782473191">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2422671045">
        <_items dataType="Array" type="Duality.Component[]" id="3595619030" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.FormationControllerComponent" id="3770486">
            <_activeFormation />
            <_selectedPathReceivers />
            <_x003C_AstarPathfinderComponent_x003E_k__BackingField />
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_PotentialPathfinderComponent_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3782473191</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="646498856" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1969611183">
            <item dataType="Type" id="281809902" value="Duality.Plugins.Pathfindax.Components.FormationControllerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3428328608">
            <item dataType="ObjectRef">3770486</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3395666749">eqmyZeJSuUy4WvJIs3inig==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">FormationControllerComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">23932836</item>
    <item dataType="ObjectRef">2545817614</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
