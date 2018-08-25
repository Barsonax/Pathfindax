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
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">23932836</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="Struct" type="Duality.Components.Transform" id="4009962089">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">3952684871</gameobj>
                    <ignoreParent dataType="Bool">false</ignoreParent>
                    <parentTransform />
                    <pos dataType="Struct" type="Duality.Vector3" />
                    <posAbs dataType="Struct" type="Duality.Vector3" />
                    <scale dataType="Float">1</scale>
                    <scaleAbs dataType="Float">1</scaleAbs>
                    <vel dataType="Struct" type="Duality.Vector3" />
                    <velAbs dataType="Struct" type="Duality.Vector3" />
                  </parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3524545569">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">23932836</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="577409533" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="3824240934">H4sIAAAAAAAEAO3ZQY6DMAxGYZYci/ufqhuqqlRKk2AH//b7NqMZgZrkZWgpx7Ztx3a1//wlibQTKyJtv7QT+yY9Tc3BD4+6dYLmEpz2xg/gNvYS2tghMcx2oJ82+qEMx83O/1FE/lXoro1+2ugHVexdPL0L2IOebFY37fMHaf5tkUnrYVu+R2+JpnKq1U9F/5JL94s7spaOURfpZyrSNOkHfLCFq+D+z5bmSmiOGm/0A4A5aa+f/TeoGQ6JO7LZQ4qoNVsAsMP101P/d/6zzwPS9jNdpZuDcDw9bb8Q9v+/dRyCp9DPhc0b0fDVzaMfiafRT9vNfh4nFPHs9bP/hUrGWYbV1RaiX4hBeDC9cY/7oCPEIMKzeRBn87IY99BC0s9I3H4k7hH362/6uVj2/kc/F8PLGvcTbkn002bTz/E8NNFP2/DlkH7xefTDOvTT5tGI7uvQD1f005a23wtr2STBCHAAAA==</data>
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
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2545817614</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">4009962089</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
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
                  <continous dataType="Bool">false</continous>
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
          <item dataType="ObjectRef">4009962089</item>
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
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1561789974">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
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
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2096934608">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="820594364">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1561789974</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="785867148">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3612358677">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="1603001729">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">12000</farZ>
              <focusDist dataType="Float">250</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="56615252">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1999603466">
                  <_items dataType="Array" type="Duality.Component[]" id="2131207392" length="4">
                    <item dataType="Struct" type="Duality.Components.Transform" id="113892470">
                      <active dataType="Bool">true</active>
                      <angle dataType="Float">0</angle>
                      <angleAbs dataType="Float">0</angleAbs>
                      <angleVel dataType="Float">0</angleVel>
                      <angleVelAbs dataType="Float">0</angleVelAbs>
                      <deriveAngle dataType="Bool">true</deriveAngle>
                      <gameobj dataType="ObjectRef">56615252</gameobj>
                      <ignoreParent dataType="Bool">false</ignoreParent>
                      <parentTransform />
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
                      <vel dataType="Struct" type="Duality.Vector3" />
                      <velAbs dataType="Struct" type="Duality.Vector3" />
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
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1165767254">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1190791200" length="8">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1392126940">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="132065558">
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
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2026860486</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1024257262" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3797621090">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="Type" id="917427088" value="Duality.Components.Renderers.RigidBodyRenderer" />
            <item dataType="Type" id="855980782" value="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1081554314">
            <item dataType="ObjectRef">2084137704</item>
            <item dataType="ObjectRef">1561789974</item>
            <item dataType="ObjectRef">785867148</item>
            <item dataType="ObjectRef">3612358677</item>
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
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">56615252</item>
    <item dataType="Struct" type="Duality.GameObject" id="1244731894">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3995069792">
        <_items dataType="Array" type="Duality.Component[]" id="3038862556">
          <item dataType="Struct" type="Duality.Components.Transform" id="1302009112">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1244731894</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="779661382">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1244731894</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1637221246">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2892292752">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2813508924">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">779661382</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3738556">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1244731894</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2830230085">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1244731894</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2924921998" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2106342834">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1913076298">
            <item dataType="ObjectRef">1302009112</item>
            <item dataType="ObjectRef">779661382</item>
            <item dataType="ObjectRef">3738556</item>
            <item dataType="ObjectRef">2830230085</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1302009112</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3983148034">Xka43Ii/aUakVM+QqXM2Qw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1470872660">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="332598378">
        <_items dataType="Array" type="Duality.Component[]" id="2394245152">
          <item dataType="Struct" type="Duality.Components.Transform" id="1528149878">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1470872660</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1005802148">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1470872660</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="658106924">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1491662052">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4002207684">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1005802148</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="229879322">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1470872660</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3056370851">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1470872660</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="634406618" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3169617488">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3362680174">
            <item dataType="ObjectRef">1528149878</item>
            <item dataType="ObjectRef">1005802148</item>
            <item dataType="ObjectRef">229879322</item>
            <item dataType="ObjectRef">3056370851</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1528149878</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1346099244">rIKlPyBVaEC9bsH7hZwmdw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1709464271">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1137746093">
        <_items dataType="Array" type="Duality.Component[]" id="3578766182">
          <item dataType="Struct" type="Duality.Components.Transform" id="1766741489">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1709464271</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1244393759">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1709464271</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1635554399">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3907909742">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="56292944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1244393759</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="468470933">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1709464271</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3294962462">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1709464271</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4185680760" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1758048711">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="902535424">
            <item dataType="ObjectRef">1766741489</item>
            <item dataType="ObjectRef">1244393759</item>
            <item dataType="ObjectRef">468470933</item>
            <item dataType="ObjectRef">3294962462</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1766741489</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3872197189">33kM9F67hku31epZ+Y2e5g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2009811255">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1960553845">
        <_items dataType="Array" type="Duality.Component[]" id="2562329206">
          <item dataType="Struct" type="Duality.Components.Transform" id="2067088473">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2009811255</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1544740743">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2009811255</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="259732263">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3584511438">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1398233552">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1544740743</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="768817917">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2009811255</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3595309446">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2009811255</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3068707016" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2375663071">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4168441120">
            <item dataType="ObjectRef">2067088473</item>
            <item dataType="ObjectRef">1544740743</item>
            <item dataType="ObjectRef">768817917</item>
            <item dataType="ObjectRef">3595309446</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2067088473</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="803807309">LksgS1U74Ua3iZ60zL+fMA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1912646709">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2252485447">
        <_items dataType="Array" type="Duality.Component[]" id="2796193486">
          <item dataType="Struct" type="Duality.Components.Transform" id="1969923927">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1912646709</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1447576197">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1912646709</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1403636005">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="470453910">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1422993952">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1447576197</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="671653371">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1912646709</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3498144900">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1912646709</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="120404736" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="497792237">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2612564216">
            <item dataType="ObjectRef">1969923927</item>
            <item dataType="ObjectRef">1447576197</item>
            <item dataType="ObjectRef">671653371</item>
            <item dataType="ObjectRef">3498144900</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1969923927</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3645048327">dSVXgXSxMEWuSRgGSZS8lw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="931815500">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2429028290">
        <_items dataType="Array" type="Duality.Component[]" id="608273936">
          <item dataType="Struct" type="Duality.Components.Transform" id="989092718">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">931815500</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="466744988">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">931815500</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3809378596">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4122183364">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3545706308">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">466744988</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3985789458">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">931815500</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2517313691">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">931815500</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1521681930" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="528449944">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="813572894">
            <item dataType="ObjectRef">989092718</item>
            <item dataType="ObjectRef">466744988</item>
            <item dataType="ObjectRef">3985789458</item>
            <item dataType="ObjectRef">2517313691</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">989092718</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2558519748">2xW8sMWTO0aaZwTXzsc0xg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3208871370">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1636225684">
        <_items dataType="Array" type="Duality.Component[]" id="4135697252">
          <item dataType="Struct" type="Duality.Components.Transform" id="3266148588">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3208871370</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2743800858">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3208871370</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="302180090">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1932495232">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="10403228">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2743800858</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1967878032">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3208871370</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="499402265">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3208871370</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2633525302" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2196039486">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1323492874">
            <item dataType="ObjectRef">3266148588</item>
            <item dataType="ObjectRef">2743800858</item>
            <item dataType="ObjectRef">1967878032</item>
            <item dataType="ObjectRef">499402265</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3266148588</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4060790350">3iibRZQxnUW4ZOiZ/IzMbA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4007446972">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1950996434">
        <_items dataType="Array" type="Duality.Component[]" id="1775024976">
          <item dataType="Struct" type="Duality.Components.Transform" id="4064724190">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4007446972</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3542376460">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4007446972</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2679548596">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3986903460">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1357860036">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3542376460</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2766453634">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4007446972</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1297977867">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4007446972</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="583910602" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="230952200">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3133898718">
            <item dataType="ObjectRef">4064724190</item>
            <item dataType="ObjectRef">3542376460</item>
            <item dataType="ObjectRef">2766453634</item>
            <item dataType="ObjectRef">1297977867</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4064724190</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="690612980">1nPEH5/QfUGLk9GO7+FJZQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2661472674">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1346042220">
        <_items dataType="Array" type="Duality.Component[]" id="166587236">
          <item dataType="Struct" type="Duality.Components.Transform" id="2718749892">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2661472674</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2196402162">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2661472674</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="830275426">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2954300304">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2398370108">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2196402162</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1420479336">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2661472674</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4246970865">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2661472674</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1564440630" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2252129190">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3385790906">
            <item dataType="ObjectRef">2718749892</item>
            <item dataType="ObjectRef">2196402162</item>
            <item dataType="ObjectRef">1420479336</item>
            <item dataType="ObjectRef">4246970865</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2718749892</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1496723366">62T2XOVKNkqvnn5iPGXkfA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1520277586">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1177549500">
        <_items dataType="Array" type="Duality.Component[]" id="4287709764">
          <item dataType="Struct" type="Duality.Components.Transform" id="1577554804">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1520277586</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1055207074">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1520277586</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="181342354">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1751688272">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1288958396">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1055207074</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="279284248">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1520277586</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3105775777">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1520277586</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3225830038" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="148540310">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3181909722">
            <item dataType="ObjectRef">1577554804</item>
            <item dataType="ObjectRef">1055207074</item>
            <item dataType="ObjectRef">279284248</item>
            <item dataType="ObjectRef">3105775777</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1577554804</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2182772790">EGt4j+tgKEiEDAOWDHq5gQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3569867140">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1802728506">
        <_items dataType="Array" type="Duality.Component[]" id="1431424256">
          <item dataType="Struct" type="Duality.Components.Transform" id="3627144358">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3569867140</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3104796628">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3569867140</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2355331388">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1307750212">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1288101444">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3104796628</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2328873802">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3569867140</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="860398035">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3569867140</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1228960442" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2336651136">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2817844430">
            <item dataType="ObjectRef">3627144358</item>
            <item dataType="ObjectRef">3104796628</item>
            <item dataType="ObjectRef">2328873802</item>
            <item dataType="ObjectRef">860398035</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3627144358</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2041751836">03UqbFbJDEa+tSFFOwLspw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1172165341">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2225828591">
        <_items dataType="Array" type="Duality.Component[]" id="570226414">
          <item dataType="Struct" type="Duality.Components.Transform" id="1229442559">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1172165341</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="707094829">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1172165341</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3709820621">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3373055014">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4281227520">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">707094829</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4226139299">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1172165341</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2757663532">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1172165341</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2205407136" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="62344005">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="784767016">
            <item dataType="ObjectRef">1229442559</item>
            <item dataType="ObjectRef">707094829</item>
            <item dataType="ObjectRef">4226139299</item>
            <item dataType="ObjectRef">2757663532</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1229442559</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2912513743">9Na8m5J5TkG5TEp2cQKpdQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="109249818">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1756346692">
        <_items dataType="Array" type="Duality.Component[]" id="972587588">
          <item dataType="Struct" type="Duality.Components.Transform" id="166527036">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">109249818</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3939146602">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">109249818</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3256278026">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2990028512">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3865106396">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3939146602</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3163223776">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">109249818</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1694748009">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">109249818</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2520482454" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3636342990">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2193727306">
            <item dataType="ObjectRef">166527036</item>
            <item dataType="ObjectRef">3939146602</item>
            <item dataType="ObjectRef">3163223776</item>
            <item dataType="ObjectRef">1694748009</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">166527036</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4151506558">e4EtReIJLUe4ApRmUfUNOg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2200191231">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1603990269">
        <_items dataType="Array" type="Duality.Component[]" id="1843437862">
          <item dataType="Struct" type="Duality.Components.Transform" id="2257468449">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2200191231</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1735120719">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2200191231</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="329482255">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2310866862">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3194229072">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1735120719</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="959197893">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2200191231</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3785689422">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2200191231</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1162659768" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1217392535">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1352683200">
            <item dataType="ObjectRef">2257468449</item>
            <item dataType="ObjectRef">1735120719</item>
            <item dataType="ObjectRef">959197893</item>
            <item dataType="ObjectRef">3785689422</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2257468449</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3026633013">0ZQ0iETJm0+qWVKzZOV9VQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3896338026">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2466522100">
        <_items dataType="Array" type="Duality.Component[]" id="1596570788">
          <item dataType="Struct" type="Duality.Components.Transform" id="3953615244">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3896338026</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3431267514">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3896338026</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2948499546">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="304800768">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="395927708">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3431267514</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2655344688">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3896338026</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1186868921">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3896338026</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2615913206" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="940311518">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="230295818">
            <item dataType="ObjectRef">3953615244</item>
            <item dataType="ObjectRef">3431267514</item>
            <item dataType="ObjectRef">2655344688</item>
            <item dataType="ObjectRef">1186868921</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3953615244</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1681983534">R/YJff6XJkuzM8GzgQTbbw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2277499757">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="945230559">
        <_items dataType="Array" type="Duality.Component[]" id="1616080494">
          <item dataType="Struct" type="Duality.Components.Transform" id="2334776975">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2277499757</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1812429245">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2277499757</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3453044797">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2304659494">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1430939904">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1812429245</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1036506419">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2277499757</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3862997948">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2277499757</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2337962272" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2862745813">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3165297224">
            <item dataType="ObjectRef">2334776975</item>
            <item dataType="ObjectRef">1812429245</item>
            <item dataType="ObjectRef">1036506419</item>
            <item dataType="ObjectRef">3862997948</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2334776975</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2006223071">wSKd5BgRwky+60rKc+KWpg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2732186707">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3658227041">
        <_items dataType="Array" type="Duality.Component[]" id="1958853486">
          <item dataType="Struct" type="Duality.Components.Transform" id="2789463925">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2732186707</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2267116195">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2732186707</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1705409635">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4114295526">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3105979776">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2267116195</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1491193369">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2732186707</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="22717602">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2732186707</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="598138400" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1758483179">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4270813896">
            <item dataType="ObjectRef">2789463925</item>
            <item dataType="ObjectRef">2267116195</item>
            <item dataType="ObjectRef">1491193369</item>
            <item dataType="ObjectRef">22717602</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2789463925</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2565147105">HTObkN9V7E6LGjjpbZU0mg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2730385191">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="228238469">
        <_items dataType="Array" type="Duality.Component[]" id="548978518">
          <item dataType="Struct" type="Duality.Components.Transform" id="2787662409">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2730385191</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2265314679">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2730385191</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3996590871">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="899593998">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1027323344">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2265314679</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1489391853">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2730385191</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="20916086">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2730385191</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1320017064" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2287223663">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4119771808">
            <item dataType="ObjectRef">2787662409</item>
            <item dataType="ObjectRef">2265314679</item>
            <item dataType="ObjectRef">1489391853</item>
            <item dataType="ObjectRef">20916086</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2787662409</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2914635517">ti9tCS2MZE6GCxwxKSz+DA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="296596406">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="55570080">
        <_items dataType="Array" type="Duality.Component[]" id="1247517916">
          <item dataType="Struct" type="Duality.Components.Transform" id="353873624">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">296596406</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4126493190">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">296596406</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3626174014">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4260643344">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="282784572">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4126493190</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3350570364">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">296596406</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1882094597">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">296596406</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2055799950" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3776760434">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2098559050">
            <item dataType="ObjectRef">353873624</item>
            <item dataType="ObjectRef">4126493190</item>
            <item dataType="ObjectRef">3350570364</item>
            <item dataType="ObjectRef">1882094597</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">353873624</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1668009282">saN4Fs4OxUeFu3IC3Bfryg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2438619011">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1334529841">
        <_items dataType="Array" type="Duality.Component[]" id="398233646">
          <item dataType="Struct" type="Duality.Components.Transform" id="2495896229">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2438619011</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1973548499">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2438619011</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1083881267">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3059464230">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="617662720">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1973548499</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1197625673">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2438619011</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4024117202">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2438619011</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3502567008" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2015200027">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3486932840">
            <item dataType="ObjectRef">2495896229</item>
            <item dataType="ObjectRef">1973548499</item>
            <item dataType="ObjectRef">1197625673</item>
            <item dataType="ObjectRef">4024117202</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2495896229</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2307229649">kGcuNB+ikUqeBAUJVfEY+A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1682396410">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3863298020">
        <_items dataType="Array" type="Duality.Component[]" id="2105949636">
          <item dataType="Struct" type="Duality.Components.Transform" id="1739673628">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1682396410</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1217325898">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1682396410</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3770494378">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1687259168">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="550317020">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1217325898</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="441403072">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1682396410</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3267894601">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1682396410</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3886290966" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1331759534">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1472449226">
            <item dataType="ObjectRef">1739673628</item>
            <item dataType="ObjectRef">1217325898</item>
            <item dataType="ObjectRef">441403072</item>
            <item dataType="ObjectRef">3267894601</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1739673628</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="942869278">ag9J8QA7pEy0Uw6QiKP+og==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2754767013">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4026960087">
        <_items dataType="Array" type="Duality.Component[]" id="4102955022">
          <item dataType="Struct" type="Duality.Components.Transform" id="2812044231">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2754767013</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2289696501">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2754767013</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3547371061">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1045347830">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3211673312">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2289696501</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1513773675">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2754767013</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="45297908">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2754767013</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1185041856" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="107053405">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3964336504">
            <item dataType="ObjectRef">2812044231</item>
            <item dataType="ObjectRef">2289696501</item>
            <item dataType="ObjectRef">1513773675</item>
            <item dataType="ObjectRef">45297908</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2812044231</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2839627511">+khABBfK7USHGzdN4omK0g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1986709866">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="220841204">
        <_items dataType="Array" type="Duality.Component[]" id="4159639716">
          <item dataType="Struct" type="Duality.Components.Transform" id="2043987084">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1986709866</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1521639354">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1986709866</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2769599322">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2860487168">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3771960476">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1521639354</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="745716528">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1986709866</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3572208057">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1986709866</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2980171510" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2272696030">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3582740234">
            <item dataType="ObjectRef">2043987084</item>
            <item dataType="ObjectRef">1521639354</item>
            <item dataType="ObjectRef">745716528</item>
            <item dataType="ObjectRef">3572208057</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2043987084</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3012453678">gxT93wern0ShFvIZQA3zqA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="175801180">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2041125426">
        <_items dataType="Array" type="Duality.Component[]" id="1340144080">
          <item dataType="Struct" type="Duality.Components.Transform" id="233078398">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">175801180</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4005697964">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">175801180</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="516377428">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4025207524">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1729124292">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4005697964</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3229775138">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">175801180</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1761299371">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">175801180</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1844047178" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="311672104">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3553878174">
            <item dataType="ObjectRef">233078398</item>
            <item dataType="ObjectRef">4005697964</item>
            <item dataType="ObjectRef">3229775138</item>
            <item dataType="ObjectRef">1761299371</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">233078398</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1461307924">xSvo5s5zckmTC8d4wrHcwg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="815994853">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2402227607">
        <_items dataType="Array" type="Duality.Component[]" id="2711875854">
          <item dataType="Struct" type="Duality.Components.Transform" id="873272071">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">815994853</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="350924341">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">815994853</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1833462773">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="959703158">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="345636832">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">350924341</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3869968811">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">815994853</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2401493044">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">815994853</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="862570176" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="952470301">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1931007736">
            <item dataType="ObjectRef">873272071</item>
            <item dataType="ObjectRef">350924341</item>
            <item dataType="ObjectRef">3869968811</item>
            <item dataType="ObjectRef">2401493044</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">873272071</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2942439863">rysoYcA8tkaFOf7nt/ErDA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1376460149">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1768111879">
        <_items dataType="Array" type="Duality.Component[]" id="1525777486">
          <item dataType="Struct" type="Duality.Components.Transform" id="1433737367">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1376460149</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="911389637">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1376460149</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3312992741">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2766418582">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3744166432">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">911389637</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="135466811">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1376460149</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2961958340">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1376460149</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4217159296" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3188567213">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3939261304">
            <item dataType="ObjectRef">1433737367</item>
            <item dataType="ObjectRef">911389637</item>
            <item dataType="ObjectRef">135466811</item>
            <item dataType="ObjectRef">2961958340</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1433737367</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2435925703">huwEm7VQtkqf+hNA7KuPbQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2989983625">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2097727691">
        <_items dataType="Array" type="Duality.Component[]" id="2994430966">
          <item dataType="Struct" type="Duality.Components.Transform" id="3047260843">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2989983625</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2524913113">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2989983625</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2642524537">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2737414990">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="305531600">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2524913113</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1748990287">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2989983625</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="280514520">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2989983625</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2828120136" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2577024737">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2890724896">
            <item dataType="ObjectRef">3047260843</item>
            <item dataType="ObjectRef">2524913113</item>
            <item dataType="ObjectRef">1748990287</item>
            <item dataType="ObjectRef">280514520</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3047260843</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2463198323">tG8Kq9qlVEuB+tsWL61vLA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2453027908">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3171023994">
        <_items dataType="Array" type="Duality.Component[]" id="905952128">
          <item dataType="Struct" type="Duality.Components.Transform" id="2510305126">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2453027908</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1987957396">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2453027908</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2392864124">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1127171140">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2711322180">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1987957396</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1212034570">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2453027908</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4038526099">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2453027908</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1713367866" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3221395392">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3712343118">
            <item dataType="ObjectRef">2510305126</item>
            <item dataType="ObjectRef">1987957396</item>
            <item dataType="ObjectRef">1212034570</item>
            <item dataType="ObjectRef">4038526099</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2510305126</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3015248732">D7zTQ17d0Uq0TJLco+IKCA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4042816587">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3217744697">
        <_items dataType="Array" type="Duality.Component[]" id="150537934" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4100093805">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4042816587</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.999</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-79.999</X>
              <Y dataType="Float">-144</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3577746075">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4042816587</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="948489787">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4081805014">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="506342688">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3577746075</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2801823249">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4042816587</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1333347482">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">25</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4042816587</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="1180521489">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4042816587</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1738980096" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3765679251">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="Type" id="2879928550" value="Duality.Plugins.Pathfindax.Components.PathVisualizer" />
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4020561656">
            <item dataType="ObjectRef">4100093805</item>
            <item dataType="ObjectRef">3577746075</item>
            <item dataType="ObjectRef">2801823249</item>
            <item dataType="ObjectRef">1180521489</item>
            <item dataType="ObjectRef">1333347482</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4100093805</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="224577401">idxZRgTq3UquY6VwpNmUiw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIconWithPathVisualizer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1137553964">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3780964962">
        <_items dataType="Array" type="Duality.Component[]" id="3418853264">
          <item dataType="Struct" type="Duality.Components.Transform" id="1194831182">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1137553964</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="672483452">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1137553964</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3874661380">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3227130692">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4104881732">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">672483452</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4191527922">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1137553964</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2723052155">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1137553964</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2819441034" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1099150584">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1592121310">
            <item dataType="ObjectRef">1194831182</item>
            <item dataType="ObjectRef">672483452</item>
            <item dataType="ObjectRef">4191527922</item>
            <item dataType="ObjectRef">2723052155</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1194831182</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1931825060">3KxKii4Gg0a/2iGj1pZniw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1749757333">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="290160615">
        <_items dataType="Array" type="Duality.Component[]" id="730645838">
          <item dataType="Struct" type="Duality.Components.Transform" id="1807034551">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1749757333</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1284686821">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1749757333</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4765253">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3232350422">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2704804128">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1284686821</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="508763995">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1749757333</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3335255524">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1749757333</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="597115776" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1920730317">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2531136184">
            <item dataType="ObjectRef">1807034551</item>
            <item dataType="ObjectRef">1284686821</item>
            <item dataType="ObjectRef">508763995</item>
            <item dataType="ObjectRef">3335255524</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1807034551</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2239448743">nfqZUJAng0Wx3qkGwkS9BQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1962168056">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1597530654">
        <_items dataType="Array" type="Duality.Component[]" id="1967107728">
          <item dataType="Struct" type="Duality.Components.Transform" id="2019445274">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1962168056</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1497097544">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1962168056</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3727244856">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="495162988">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="637907812">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1497097544</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="721174718">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1962168056</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3547666247">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1962168056</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="269982858" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4023383612">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3206181270">
            <item dataType="ObjectRef">2019445274</item>
            <item dataType="ObjectRef">1497097544</item>
            <item dataType="ObjectRef">721174718</item>
            <item dataType="ObjectRef">3547666247</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2019445274</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3517098728">y5Os2VNegUmVxPbNoMO+VQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="793093625">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2859027419">
        <_items dataType="Array" type="Duality.Component[]" id="1354417302">
          <item dataType="Struct" type="Duality.Components.Transform" id="850370843">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">793093625</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="328023113">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">793093625</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3136614953">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2492355086">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4099944400">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">328023113</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3847067583">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">793093625</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2378591816">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">793093625</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1359983464" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3356028721">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2866703968">
            <item dataType="ObjectRef">850370843</item>
            <item dataType="ObjectRef">328023113</item>
            <item dataType="ObjectRef">3847067583</item>
            <item dataType="ObjectRef">2378591816</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">850370843</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3301441763">+133jcym7kanzkCXd9IyIA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4263575363">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2457411185">
        <_items dataType="Array" type="Duality.Component[]" id="2358503086">
          <item dataType="Struct" type="Duality.Components.Transform" id="25885285">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4263575363</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3798504851">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4263575363</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3932098931">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2330193190">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3185548544">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3798504851</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3022582025">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4263575363</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1554106258">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4263575363</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4183920352" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3734976475">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2785307496">
            <item dataType="ObjectRef">25885285</item>
            <item dataType="ObjectRef">3798504851</item>
            <item dataType="ObjectRef">3022582025</item>
            <item dataType="ObjectRef">1554106258</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">25885285</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="539531025">gIZmy44LfkiexjKsRz/eIw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1777301970">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1527850556">
        <_items dataType="Array" type="Duality.Component[]" id="4246903108">
          <item dataType="Struct" type="Duality.Components.Transform" id="1834579188">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1777301970</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1312231458">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1777301970</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3210821138">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="659209808">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3330801084">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1312231458</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="536308632">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1777301970</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3362800161">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1777301970</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3919819158" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="257947158">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="542782426">
            <item dataType="ObjectRef">1834579188</item>
            <item dataType="ObjectRef">1312231458</item>
            <item dataType="ObjectRef">536308632</item>
            <item dataType="ObjectRef">3362800161</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1834579188</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1282537910">tqasJ4iZlEiZvAZZT+nRFQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3413657483">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3121157113">
        <_items dataType="Array" type="Duality.Component[]" id="565656142">
          <item dataType="Struct" type="Duality.Components.Transform" id="3470934701">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3413657483</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2948586971">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3413657483</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2844251131">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="684900950">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="643295264">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2948586971</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2172664145">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3413657483</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="704188378">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3413657483</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3310250112" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="951847507">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3874863480">
            <item dataType="ObjectRef">3470934701</item>
            <item dataType="ObjectRef">2948586971</item>
            <item dataType="ObjectRef">2172664145</item>
            <item dataType="ObjectRef">704188378</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3470934701</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2201359929">MGwD6DFm2UCkwBJ1tkBh0g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3603773959">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1461982245">
        <_items dataType="Array" type="Duality.Component[]" id="1865778326">
          <item dataType="Struct" type="Duality.Components.Transform" id="3661051177">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3603773959</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3138703447">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3603773959</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2435102007">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3413505678">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="690839760">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3138703447</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2362780621">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3603773959</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="894304854">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3603773959</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1639740264" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3506843855">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2977099360">
            <item dataType="ObjectRef">3661051177</item>
            <item dataType="ObjectRef">3138703447</item>
            <item dataType="ObjectRef">2362780621</item>
            <item dataType="ObjectRef">894304854</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3661051177</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3136921373">7WXK1QY2OkONUGi00LxNPw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="662313779">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3699531521">
        <_items dataType="Array" type="Duality.Component[]" id="3286036782">
          <item dataType="Struct" type="Duality.Components.Transform" id="719590997">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">662313779</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="197243267">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">662313779</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4191545219">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3063979814">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2756674816">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">197243267</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3716287737">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">662313779</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2247811970">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">662313779</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3278197600" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1372180683">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1224597576">
            <item dataType="ObjectRef">719590997</item>
            <item dataType="ObjectRef">197243267</item>
            <item dataType="ObjectRef">3716287737</item>
            <item dataType="ObjectRef">2247811970</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">719590997</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2382359425">PLgLN+WzGUOvPxDRptLQ6g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1065970965">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4067252071">
        <_items dataType="Array" type="Duality.Component[]" id="4264534606">
          <item dataType="Struct" type="Duality.Components.Transform" id="1123248183">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1065970965</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="600900453">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1065970965</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4085054149">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1429123798">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="36805920">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">600900453</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4119944923">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1065970965</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2651469156">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1065970965</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2629865600" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1969004877">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2119214776">
            <item dataType="ObjectRef">1123248183</item>
            <item dataType="ObjectRef">600900453</item>
            <item dataType="ObjectRef">4119944923</item>
            <item dataType="ObjectRef">2651469156</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1123248183</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2138364199">p0Be/kEba0ag+fD3cqGrVw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="986881732">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="451723002">
        <_items dataType="Array" type="Duality.Component[]" id="2848676224">
          <item dataType="Struct" type="Duality.Components.Transform" id="1044158950">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">986881732</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="521811220">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">986881732</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="584247804">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1706054468">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="234825284">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">521811220</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4040855690">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">986881732</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2572379923">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">986881732</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3697171770" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2326945088">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="409664078">
            <item dataType="ObjectRef">1044158950</item>
            <item dataType="ObjectRef">521811220</item>
            <item dataType="ObjectRef">4040855690</item>
            <item dataType="ObjectRef">2572379923</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1044158950</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3350861788">dXyIhQ6mqEi6u710O0MHhw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="504058926">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2366685560">
        <_items dataType="Array" type="Duality.Component[]" id="529426284">
          <item dataType="Struct" type="Duality.Components.Transform" id="561336144">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">504058926</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="38988414">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">504058926</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3598534086">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="839822592">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1646193308">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">38988414</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3558032884">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">504058926</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2089557117">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">504058926</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1463428062" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3180136378">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3241534906">
            <item dataType="ObjectRef">561336144</item>
            <item dataType="ObjectRef">38988414</item>
            <item dataType="ObjectRef">3558032884</item>
            <item dataType="ObjectRef">2089557117</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">561336144</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="599596986">zXDlzKPS2UCLDjynidhsQQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3757379694">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4055702840">
        <_items dataType="Array" type="Duality.Component[]" id="1929727596">
          <item dataType="Struct" type="Duality.Components.Transform" id="3814656912">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3757379694</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3292309182">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3757379694</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4223274502">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1015242112">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="586093980">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3292309182</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2516386356">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3757379694</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1047910589">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3757379694</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="895502046" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3675999610">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2255257402">
            <item dataType="ObjectRef">3814656912</item>
            <item dataType="ObjectRef">3292309182</item>
            <item dataType="ObjectRef">2516386356</item>
            <item dataType="ObjectRef">1047910589</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3814656912</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3087104506">u7TdnDMeuUSe8Fl75vrNwQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1822216391">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="480625509">
        <_items dataType="Array" type="Duality.Component[]" id="2104086422">
          <item dataType="Struct" type="Duality.Components.Transform" id="1879493609">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1822216391</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1357145879">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1822216391</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="865170551">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3050657166">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1856194768">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1357145879</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="581223053">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1822216391</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3407714582">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1822216391</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2418535016" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1251801103">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="512861152">
            <item dataType="ObjectRef">1879493609</item>
            <item dataType="ObjectRef">1357145879</item>
            <item dataType="ObjectRef">581223053</item>
            <item dataType="ObjectRef">3407714582</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1879493609</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4136490333">IBq07fDuwUmLHjMDplnzYw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="863016098">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="179937900">
        <_items dataType="Array" type="Duality.Component[]" id="702546788">
          <item dataType="Struct" type="Duality.Components.Transform" id="920293316">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">863016098</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="397945586">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">863016098</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1845868642">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="261785488">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2020049212">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">397945586</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3916990056">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">863016098</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2448514289">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">863016098</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2814636086" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2760199846">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3030353850">
            <item dataType="ObjectRef">920293316</item>
            <item dataType="ObjectRef">397945586</item>
            <item dataType="ObjectRef">3916990056</item>
            <item dataType="ObjectRef">2448514289</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">920293316</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1168351398">cFonk3+I1kqkQJPvUpnSeA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1257281931">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3543389689">
        <_items dataType="Array" type="Duality.Component[]" id="99366478">
          <item dataType="Struct" type="Duality.Components.Transform" id="1314559149">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1257281931</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="792211419">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1257281931</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2036920827">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2522573398">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2035922976">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">792211419</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="16288593">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1257281931</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2842780122">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1257281931</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2520970368" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1308671059">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4266197368">
            <item dataType="ObjectRef">1314559149</item>
            <item dataType="ObjectRef">792211419</item>
            <item dataType="ObjectRef">16288593</item>
            <item dataType="ObjectRef">2842780122</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1314559149</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4171311161">h+IYgcMT/kqKtg7UOvEzhw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="603056291">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2312859281">
        <_items dataType="Array" type="Duality.Component[]" id="3702425070">
          <item dataType="Struct" type="Duality.Components.Transform" id="660333509">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">603056291</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="137985779">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">603056291</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2510288019">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="931739878">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4196357504">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">137985779</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3657030249">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">603056291</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2188554482">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">603056291</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3690799776" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3906974011">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="539306536">
            <item dataType="ObjectRef">660333509</item>
            <item dataType="ObjectRef">137985779</item>
            <item dataType="ObjectRef">3657030249</item>
            <item dataType="ObjectRef">2188554482</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">660333509</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2364852913">KXF2nCRsGUegGGZbyEYOQg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3756633301">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1698838951">
        <_items dataType="Array" type="Duality.Component[]" id="3300756430">
          <item dataType="Struct" type="Duality.Components.Transform" id="3813910519">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3756633301</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3291562789">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3756633301</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1770873349">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1872009814">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3406510112">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3291562789</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2515639963">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3756633301</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1047164196">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3756633301</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1221931008" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="419527053">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3003542456">
            <item dataType="ObjectRef">3813910519</item>
            <item dataType="ObjectRef">3291562789</item>
            <item dataType="ObjectRef">2515639963</item>
            <item dataType="ObjectRef">1047164196</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3813910519</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1358254183">wh8IzO2EEEeRi1VmgEcwng==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1581611903">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="616116093">
        <_items dataType="Array" type="Duality.Component[]" id="3055770406">
          <item dataType="Struct" type="Duality.Components.Transform" id="1638889121">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1581611903</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1116541391">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1581611903</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1434500751">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="657308846">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4293542224">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1116541391</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="340618565">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1581611903</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3167110094">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1581611903</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="326968760" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="513720343">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2729177280">
            <item dataType="ObjectRef">1638889121</item>
            <item dataType="ObjectRef">1116541391</item>
            <item dataType="ObjectRef">340618565</item>
            <item dataType="ObjectRef">3167110094</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1638889121</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="162073013">UUi6sjITgUylRW1ivkKCbQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1273968049">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="41727955">
        <_items dataType="Array" type="Duality.Component[]" id="1775381094">
          <item dataType="Struct" type="Duality.Components.Transform" id="1331245267">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1273968049</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="808897537">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1273968049</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1422336833">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2710454702">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3692246352">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">808897537</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="32974711">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1273968049</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2859466240">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1273968049</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3725700728" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4216831161">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2303933184">
            <item dataType="ObjectRef">1331245267</item>
            <item dataType="ObjectRef">808897537</item>
            <item dataType="ObjectRef">32974711</item>
            <item dataType="ObjectRef">2859466240</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1331245267</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2648620347">47ArWwnjAE6ybeuZ6f3/Rg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1329085542">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3616148976">
        <_items dataType="Array" type="Duality.Component[]" id="1831121724">
          <item dataType="Struct" type="Duality.Components.Transform" id="1386362760">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1329085542</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="864015030">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1329085542</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1204963118">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="522334032">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4100987836">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">864015030</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="88092204">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1329085542</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2914583733">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1329085542</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2128550126" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1888705346">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3438211082">
            <item dataType="ObjectRef">1386362760</item>
            <item dataType="ObjectRef">864015030</item>
            <item dataType="ObjectRef">88092204</item>
            <item dataType="ObjectRef">2914583733</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1386362760</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1424899378">Y/YZMZKPH0qNYLQgHISKdg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4110595780">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1364981498">
        <_items dataType="Array" type="Duality.Component[]" id="1391192448">
          <item dataType="Struct" type="Duality.Components.Transform" id="4167872998">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4110595780</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3645525268">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4110595780</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3857125884">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2386486084">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2016298564">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3645525268</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2869602442">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4110595780</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1401126675">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4110595780</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2942766394" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3041518912">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="928840270">
            <item dataType="ObjectRef">4167872998</item>
            <item dataType="ObjectRef">3645525268</item>
            <item dataType="ObjectRef">2869602442</item>
            <item dataType="ObjectRef">1401126675</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4167872998</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3324837852">qG0aJMeFOU6f5ZXoT/MGgQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="900218857">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2256552427">
        <_items dataType="Array" type="Duality.Component[]" id="4206193270">
          <item dataType="Struct" type="Duality.Components.Transform" id="957496075">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">900218857</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="435148345">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">900218857</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4150487961">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="236776526">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="104265424">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">435148345</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3954192815">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">900218857</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2485717048">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">900218857</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1304273096" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1868626497">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2395600352">
            <item dataType="ObjectRef">957496075</item>
            <item dataType="ObjectRef">435148345</item>
            <item dataType="ObjectRef">3954192815</item>
            <item dataType="ObjectRef">2485717048</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">957496075</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2845410451">O09v8yK9wE6LeNGDYtauIw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="11760026">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3572343236">
        <_items dataType="Array" type="Duality.Component[]" id="3360180548">
          <item dataType="Struct" type="Duality.Components.Transform" id="69037244">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">11760026</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3841656810">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">11760026</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="809507978">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1439110112">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2819531740">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3841656810</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3065733984">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">11760026</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1597258217">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">11760026</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="923861398" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3056521806">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3771365962">
            <item dataType="ObjectRef">69037244</item>
            <item dataType="ObjectRef">3841656810</item>
            <item dataType="ObjectRef">3065733984</item>
            <item dataType="ObjectRef">1597258217</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">69037244</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2483497982">jGUeT74KwkC/rpq/oa5W5w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3407220857">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1358757979">
        <_items dataType="Array" type="Duality.Component[]" id="1661899158">
          <item dataType="Struct" type="Duality.Components.Transform" id="3464498075">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3407220857</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2942150345">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3407220857</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2616610473">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3561384974">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2206606288">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2942150345</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2166227519">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3407220857</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="697751752">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3407220857</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2589888616" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3477159857">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3278759008">
            <item dataType="ObjectRef">3464498075</item>
            <item dataType="ObjectRef">2942150345</item>
            <item dataType="ObjectRef">2166227519</item>
            <item dataType="ObjectRef">697751752</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3464498075</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2414420579">KunXrCvLoEaNX17yefOqdQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2050314093">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2495444703">
        <_items dataType="Array" type="Duality.Component[]" id="1849226862">
          <item dataType="Struct" type="Duality.Components.Transform" id="2107591311">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2050314093</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1585243581">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2050314093</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="158618685">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4265170982">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1379584256">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1585243581</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="809320755">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2050314093</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3635812284">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2050314093</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3376480544" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2545183957">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2584111688">
            <item dataType="ObjectRef">2107591311</item>
            <item dataType="ObjectRef">1585243581</item>
            <item dataType="ObjectRef">809320755</item>
            <item dataType="ObjectRef">3635812284</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2107591311</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1176827103">edCpe849W0KRJx5z6+KGOA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2549236350">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3200822056">
        <_items dataType="Array" type="Duality.Component[]" id="3540746156">
          <item dataType="Struct" type="Duality.Components.Transform" id="2606513568">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2549236350</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2084165838">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2549236350</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2062620950">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="71926048">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2136635356">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2084165838</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1308243012">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2549236350</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4134734541">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2549236350</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="957649054" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3502393578">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1658341338">
            <item dataType="ObjectRef">2606513568</item>
            <item dataType="ObjectRef">2084165838</item>
            <item dataType="ObjectRef">1308243012</item>
            <item dataType="ObjectRef">4134734541</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2606513568</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="633629002">4QUTfnNRy0eygwZMIpUmNQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1738383417">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="962674587">
        <_items dataType="Array" type="Duality.Component[]" id="303644566">
          <item dataType="Struct" type="Duality.Components.Transform" id="1795660635">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1738383417</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1273312905">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1738383417</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3461825257">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3730096910">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1280462288">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1273312905</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="497390079">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1738383417</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3323881608">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1738383417</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1882077800" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1756636401">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="568521696">
            <item dataType="ObjectRef">1795660635</item>
            <item dataType="ObjectRef">1273312905</item>
            <item dataType="ObjectRef">497390079</item>
            <item dataType="ObjectRef">3323881608</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1795660635</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2654438307">TIv8p116Ik60DjN9+ouLkg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3795702034">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1529562620">
        <_items dataType="Array" type="Duality.Component[]" id="1123117892">
          <item dataType="Struct" type="Duality.Components.Transform" id="3852979252">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3795702034</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3330631522">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3795702034</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1556844370">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1083742544">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1445125052">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3330631522</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2554708696">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3795702034</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1086232929">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3795702034</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="497119126" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1248234326">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3324098778">
            <item dataType="ObjectRef">3852979252</item>
            <item dataType="ObjectRef">3330631522</item>
            <item dataType="ObjectRef">2554708696</item>
            <item dataType="ObjectRef">1086232929</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3852979252</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="937579382">esgyaNSqhk6eCc66pA1Swg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3165085153">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1304191779">
        <_items dataType="Array" type="Duality.Component[]" id="1464325222">
          <item dataType="Struct" type="Duality.Components.Transform" id="3222362371">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3165085153</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2700014641">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3165085153</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1813710577">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1528599470">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2079181136">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2700014641</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1924091815">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3165085153</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="455616048">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3165085153</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2125192312" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="52633161">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="525572416">
            <item dataType="ObjectRef">3222362371</item>
            <item dataType="ObjectRef">2700014641</item>
            <item dataType="ObjectRef">1924091815</item>
            <item dataType="ObjectRef">455616048</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3222362371</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="671221355">ULEmUbS2pkKKs9tCP7ERCA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="757056770">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1010972172">
        <_items dataType="Array" type="Duality.Component[]" id="3840771236">
          <item dataType="Struct" type="Duality.Components.Transform" id="814333988">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">757056770</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="291986258">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">757056770</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1446992002">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4211249808">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="282238268">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">291986258</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3811030728">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">757056770</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2342554961">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">757056770</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2101457654" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2542997126">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1757359930">
            <item dataType="ObjectRef">814333988</item>
            <item dataType="ObjectRef">291986258</item>
            <item dataType="ObjectRef">3811030728</item>
            <item dataType="ObjectRef">2342554961</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">814333988</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2682253830">Lwusj+ADhUyUbe/7cjiRWw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3236718955">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4062568729">
        <_items dataType="Array" type="Duality.Component[]" id="732930382">
          <item dataType="Struct" type="Duality.Components.Transform" id="3293996173">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3236718955</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2771648443">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3236718955</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2523086491">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="134216598">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="464336928">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2771648443</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1995725617">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3236718955</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="527249850">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3236718955</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2349600640" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2078700595">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="557715640">
            <item dataType="ObjectRef">3293996173</item>
            <item dataType="ObjectRef">2771648443</item>
            <item dataType="ObjectRef">1995725617</item>
            <item dataType="ObjectRef">527249850</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3293996173</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="497641049">81vmi7q0IEqvuvSBZP132g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3191450141">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1883232687">
        <_items dataType="Array" type="Duality.Component[]" id="2711266286">
          <item dataType="Struct" type="Duality.Components.Transform" id="3248727359">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3191450141</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2726379629">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3191450141</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3903922061">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3638317350">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="812254464">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2726379629</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1950456803">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3191450141</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="481981036">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3191450141</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="277812384" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4052752005">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3684440232">
            <item dataType="ObjectRef">3248727359</item>
            <item dataType="ObjectRef">2726379629</item>
            <item dataType="ObjectRef">1950456803</item>
            <item dataType="ObjectRef">481981036</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3248727359</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3551011727">zGe9zHKEK0i492ONvrTGzQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1038157904">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1112265462">
        <_items dataType="Array" type="Duality.Component[]" id="2792700128">
          <item dataType="Struct" type="Duality.Components.Transform" id="1095435122">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1038157904</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="573087392">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1038157904</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1584382320">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1038093628">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3987128132">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">573087392</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4092131862">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1038157904</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2623656095">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1038157904</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4079976986" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2120076740">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2162698646">
            <item dataType="ObjectRef">1095435122</item>
            <item dataType="ObjectRef">573087392</item>
            <item dataType="ObjectRef">4092131862</item>
            <item dataType="ObjectRef">2623656095</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1095435122</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4017290368">IdZEeTfqrkWfGGQ0s5Sz8w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3342110227">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2392512161">
        <_items dataType="Array" type="Duality.Component[]" id="990155886">
          <item dataType="Struct" type="Duality.Components.Transform" id="3399387445">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3342110227</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2877039715">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3342110227</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2304856227">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2790839654">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2485296000">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2877039715</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2101116889">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3342110227</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="632641122">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3342110227</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="729840416" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2245296043">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="219647304">
            <item dataType="ObjectRef">3399387445</item>
            <item dataType="ObjectRef">2877039715</item>
            <item dataType="ObjectRef">2101116889</item>
            <item dataType="ObjectRef">632641122</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3399387445</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1953057185">kdXzp414XUqWZv8+EO3hcA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1751726494">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1656269064">
        <_items dataType="Array" type="Duality.Component[]" id="2845819756">
          <item dataType="Struct" type="Duality.Components.Transform" id="1809003712">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1751726494</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1286655982">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1751726494</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3754166326">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2850666848">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3857222876">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1286655982</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="510733156">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1751726494</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3337224685">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1751726494</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2463068126" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4062403530">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1831000218">
            <item dataType="ObjectRef">1809003712</item>
            <item dataType="ObjectRef">1286655982</item>
            <item dataType="ObjectRef">510733156</item>
            <item dataType="ObjectRef">3337224685</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1809003712</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3464574762">1eyGBrhack66Vot4BGYZtQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="566811834">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1223440164">
        <_items dataType="Array" type="Duality.Component[]" id="1026951876">
          <item dataType="Struct" type="Duality.Components.Transform" id="624089052">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">566811834</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="101741322">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">566811834</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="243593322">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="345714720">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="510024668">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">101741322</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3620785792">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">566811834</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2152310025">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">566811834</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2311059734" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1611398766">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2369974218">
            <item dataType="ObjectRef">624089052</item>
            <item dataType="ObjectRef">101741322</item>
            <item dataType="ObjectRef">3620785792</item>
            <item dataType="ObjectRef">2152310025</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">624089052</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1771315806">v+RZqkiBLEGTnVugvP0QKg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="872680167">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1190348229">
        <_items dataType="Array" type="Duality.Component[]" id="3844732630">
          <item dataType="Struct" type="Duality.Components.Transform" id="929957385">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">872680167</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="407609655">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">872680167</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1387017815">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2857571854">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4255268816">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">407609655</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3926654125">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">872680167</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2458178358">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">872680167</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2581210664" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="157746863">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="464118944">
            <item dataType="ObjectRef">929957385</item>
            <item dataType="ObjectRef">407609655</item>
            <item dataType="ObjectRef">3926654125</item>
            <item dataType="ObjectRef">2458178358</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">929957385</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="78807613">sC6n/ba+AE+iXgPtwIVTvg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="254326266">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3463973604">
        <_items dataType="Array" type="Duality.Component[]" id="3030374340">
          <item dataType="Struct" type="Duality.Components.Transform" id="311603484">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">254326266</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4084223050">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">254326266</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3301334698">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1094340128">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3141094364">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4084223050</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3308300224">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">254326266</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1839824457">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">254326266</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3862748694" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="285593774">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2279915210">
            <item dataType="ObjectRef">311603484</item>
            <item dataType="ObjectRef">4084223050</item>
            <item dataType="ObjectRef">3308300224</item>
            <item dataType="ObjectRef">1839824457</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">311603484</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3616811038">YRTnKwbXrkC8mgnQa+qckA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4099107421">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4124699247">
        <_items dataType="Array" type="Duality.Component[]" id="3176288750">
          <item dataType="Struct" type="Duality.Components.Transform" id="4156384639">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4099107421</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3634036909">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4099107421</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1309616205">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="658582054">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2744324352">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3634036909</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2858114083">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4099107421</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1389638316">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4099107421</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3055140512" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3951983045">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2001749544">
            <item dataType="ObjectRef">4156384639</item>
            <item dataType="ObjectRef">3634036909</item>
            <item dataType="ObjectRef">2858114083</item>
            <item dataType="ObjectRef">1389638316</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4156384639</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2327088719">eZXSQebIaki0FtAfFpeh1Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3323249951">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1925931485">
        <_items dataType="Array" type="Duality.Component[]" id="3172784230">
          <item dataType="Struct" type="Duality.Components.Transform" id="3380527169">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3323249951</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2858179439">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3323249951</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1660679215">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3657447150">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2670374992">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2858179439</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2082256613">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3323249951</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="613780846">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3323249951</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="564228216" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="928807095">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2412385088">
            <item dataType="ObjectRef">3380527169</item>
            <item dataType="ObjectRef">2858179439</item>
            <item dataType="ObjectRef">2082256613</item>
            <item dataType="ObjectRef">613780846</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3380527169</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="903969429">l3DYRjB/6EyENQ+ziswu+A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3131207948">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3362048770">
        <_items dataType="Array" type="Duality.Component[]" id="3045494160">
          <item dataType="Struct" type="Duality.Components.Transform" id="3188485166">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3131207948</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2666137436">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3131207948</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="886301284">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4137450948">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3541053764">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2666137436</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1890214610">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3131207948</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="421738843">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3131207948</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3194657674" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2100617944">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2879561886">
            <item dataType="ObjectRef">3188485166</item>
            <item dataType="ObjectRef">2666137436</item>
            <item dataType="ObjectRef">1890214610</item>
            <item dataType="ObjectRef">421738843</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3188485166</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3290866308">3kXy0OjduEWVjRUgJFyUAg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1234361832">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="498641710">
        <_items dataType="Array" type="Duality.Component[]" id="1204457296">
          <item dataType="Struct" type="Duality.Components.Transform" id="1291639050">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1234361832</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="769291320">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1234361832</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3619048200">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2617731948">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2861404004">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">769291320</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4288335790">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1234361832</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2819860023">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1234361832</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="768436426" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1591593388">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2899512246">
            <item dataType="ObjectRef">1291639050</item>
            <item dataType="ObjectRef">769291320</item>
            <item dataType="ObjectRef">4288335790</item>
            <item dataType="ObjectRef">2819860023</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1291639050</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1031181816">vlqc3kB0EUSzE1bc26e6tQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2987516220">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="278906706">
        <_items dataType="Array" type="Duality.Component[]" id="2818132304">
          <item dataType="Struct" type="Duality.Components.Transform" id="3044793438">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2987516220</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2522445708">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2987516220</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3674393908">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3454322852">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3210707140">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2522445708</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1746522882">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2987516220</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="278047115">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2987516220</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="798215882" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3865018504">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2816963550">
            <item dataType="ObjectRef">3044793438</item>
            <item dataType="ObjectRef">2522445708</item>
            <item dataType="ObjectRef">1746522882</item>
            <item dataType="ObjectRef">278047115</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3044793438</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="850518644">Ty3aOp3cMUaepSnDt11Lng==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1185668482">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2004217484">
        <_items dataType="Array" type="Duality.Component[]" id="1737310628">
          <item dataType="Struct" type="Duality.Components.Transform" id="1242945700">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1185668482</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="720597970">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1185668482</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1800576002">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3812439440">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2274134332">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">720597970</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4239642440">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1185668482</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2771166673">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1185668482</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="744301558" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2359537670">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2393534778">
            <item dataType="ObjectRef">1242945700</item>
            <item dataType="ObjectRef">720597970</item>
            <item dataType="ObjectRef">4239642440</item>
            <item dataType="ObjectRef">2771166673</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1242945700</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2840775302">q7GdwDFQlEyuBgkDiFFJcg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1955250322">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1587701628">
        <_items dataType="Array" type="Duality.Component[]" id="152403012">
          <item dataType="Struct" type="Duality.Components.Transform" id="2012527540">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1955250322</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1490179810">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1955250322</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1671763154">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="262770512">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4218346428">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1490179810</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="714256984">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1955250322</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3540748513">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1955250322</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="97460374" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3250447318">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="264608730">
            <item dataType="ObjectRef">2012527540</item>
            <item dataType="ObjectRef">1490179810</item>
            <item dataType="ObjectRef">714256984</item>
            <item dataType="ObjectRef">3540748513</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2012527540</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1147203830">UC4Ez8+V80KWH00MqZhqLw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="523348210">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3328905756">
        <_items dataType="Array" type="Duality.Component[]" id="2910368196">
          <item dataType="Struct" type="Duality.Components.Transform" id="580625428">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">523348210</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="58277698">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">523348210</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2320869234">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1183360208">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3475167932">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">58277698</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3577322168">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">523348210</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2108846401">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">523348210</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4177583126" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="845751478">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4237435546">
            <item dataType="ObjectRef">580625428</item>
            <item dataType="ObjectRef">58277698</item>
            <item dataType="ObjectRef">3577322168</item>
            <item dataType="ObjectRef">2108846401</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">580625428</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1900282710">B9xq3Fkb10mKLGIfHebk3w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="239383283">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3816907841">
        <_items dataType="Array" type="Duality.Component[]" id="2566206894">
          <item dataType="Struct" type="Duality.Components.Transform" id="296660501">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">239383283</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4069280067">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">239383283</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="568013251">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1486205990">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3409459456">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4069280067</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3293357241">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">239383283</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1824881474">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">239383283</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2105202144" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1931512203">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2378406600">
            <item dataType="ObjectRef">296660501</item>
            <item dataType="ObjectRef">4069280067</item>
            <item dataType="ObjectRef">3293357241</item>
            <item dataType="ObjectRef">1824881474</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">296660501</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1078795073">Xuq/W4p0uU2WbbWPixVQ1g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1130044846">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="366376184">
        <_items dataType="Array" type="Duality.Component[]" id="3318770540">
          <item dataType="Struct" type="Duality.Components.Transform" id="1187322064">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1130044846</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="664974334">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1130044846</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1659295814">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="487872512">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="31434908">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">664974334</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4184018804">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1130044846</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2715543037">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1130044846</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4096972766" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1474393402">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1084622522">
            <item dataType="ObjectRef">1187322064</item>
            <item dataType="ObjectRef">664974334</item>
            <item dataType="ObjectRef">4184018804</item>
            <item dataType="ObjectRef">2715543037</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1187322064</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3366869562">GyLv+ddXb0WhcR4cDpfmBA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="526711953">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="648621171">
        <_items dataType="Array" type="Duality.Component[]" id="693459238">
          <item dataType="Struct" type="Duality.Components.Transform" id="583989171">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">526711953</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="61641441">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">526711953</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4021983521">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2092930670">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3460593232">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">61641441</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3580685911">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">526711953</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2112210144">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">526711953</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3828907960" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="147230489">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1137338240">
            <item dataType="ObjectRef">583989171</item>
            <item dataType="ObjectRef">61641441</item>
            <item dataType="ObjectRef">3580685911</item>
            <item dataType="ObjectRef">2112210144</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">583989171</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1088032091">yJaDXejlgESt+sG6a/PyOA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4073620916">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="413746314">
        <_items dataType="Array" type="Duality.Component[]" id="1382319072">
          <item dataType="Struct" type="Duality.Components.Transform" id="4130898134">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4073620916</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3608550404">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4073620916</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1164749004">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3262189732">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4038930628">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3608550404</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2832627578">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4073620916</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1364151811">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4073620916</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1440232730" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3681734512">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3322263278">
            <item dataType="ObjectRef">4130898134</item>
            <item dataType="ObjectRef">3608550404</item>
            <item dataType="ObjectRef">2832627578</item>
            <item dataType="ObjectRef">1364151811</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4130898134</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4238870732">sutDJFX5dEerUSh04iScOQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="454452419">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="13142513">
        <_items dataType="Array" type="Duality.Component[]" id="1875993518">
          <item dataType="Struct" type="Duality.Components.Transform" id="511729637">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">454452419</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4284349203">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">454452419</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1412136691">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1167152934">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3713213696">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4284349203</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3508426377">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">454452419</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2039950610">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">454452419</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="301137888" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3396760155">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4092414056">
            <item dataType="ObjectRef">511729637</item>
            <item dataType="ObjectRef">4284349203</item>
            <item dataType="ObjectRef">3508426377</item>
            <item dataType="ObjectRef">2039950610</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">511729637</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3110069137">L9/v02T+dUCaFzeVuPco+A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="546155945">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3282668587">
        <_items dataType="Array" type="Duality.Component[]" id="417117174">
          <item dataType="Struct" type="Duality.Components.Transform" id="603433163">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">546155945</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="81085433">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">546155945</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1910733401">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="945363918">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="175051216">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">81085433</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3600129903">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">546155945</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2131654136">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">546155945</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1122836552" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3329964801">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3384370016">
            <item dataType="ObjectRef">603433163</item>
            <item dataType="ObjectRef">81085433</item>
            <item dataType="ObjectRef">3600129903</item>
            <item dataType="ObjectRef">2131654136</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">603433163</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3113283411">HnE4LX9HdUGCcooiDNDLBg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2590005420">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="466534626">
        <_items dataType="Array" type="Duality.Component[]" id="3520257168">
          <item dataType="Struct" type="Duality.Components.Transform" id="2647282638">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2590005420</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2124934908">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2590005420</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2174901892">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3622220868">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2794053188">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2124934908</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1349012082">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2590005420</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4175503611">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2590005420</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1119528586" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4165007992">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="526871006">
            <item dataType="ObjectRef">2647282638</item>
            <item dataType="ObjectRef">2124934908</item>
            <item dataType="ObjectRef">1349012082</item>
            <item dataType="ObjectRef">4175503611</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2647282638</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1508304676">Z0exaqpiZketUuEmnG0Fmg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2487857518">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3818345528">
        <_items dataType="Array" type="Duality.Component[]" id="1826884204">
          <item dataType="Struct" type="Duality.Components.Transform" id="2545134736">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2487857518</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2022787006">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2487857518</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="324886790">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4245084544">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1824808348">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2022787006</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1246864180">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2487857518</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4073355709">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2487857518</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="824021726" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="68680314">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1968863034">
            <item dataType="ObjectRef">2545134736</item>
            <item dataType="ObjectRef">2022787006</item>
            <item dataType="ObjectRef">1246864180</item>
            <item dataType="ObjectRef">4073355709</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2545134736</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="183345914">MVlZrD8YckiiZUXAQciUYQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1751312676">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="340910746">
        <_items dataType="Array" type="Duality.Component[]" id="4073585536">
          <item dataType="Struct" type="Duality.Components.Transform" id="1808589894">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1751312676</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1286242164">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1751312676</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2939854492">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3007200196">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2453318980">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1286242164</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="510319338">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1751312676</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3336810867">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1751312676</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2084449082" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3174197472">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3654686606">
            <item dataType="ObjectRef">1808589894</item>
            <item dataType="ObjectRef">1286242164</item>
            <item dataType="ObjectRef">510319338</item>
            <item dataType="ObjectRef">3336810867</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1808589894</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="399067132">fZLsnEOVx0qua0+TRYajEw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3845117459">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2013757089">
        <_items dataType="Array" type="Duality.Component[]" id="3614590062">
          <item dataType="Struct" type="Duality.Components.Transform" id="3902394677">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3845117459</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3380046947">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3845117459</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2525317283">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3344864614">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="565648256">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3380046947</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2604124121">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3845117459</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1135648354">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3845117459</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1121962784" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="692762539">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4266786120">
            <item dataType="ObjectRef">3902394677</item>
            <item dataType="ObjectRef">3380046947</item>
            <item dataType="ObjectRef">2604124121</item>
            <item dataType="ObjectRef">1135648354</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3902394677</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="297554337">AuMaG890zkSNx2AEBRjQOw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2988918892">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2153847074">
        <_items dataType="Array" type="Duality.Component[]" id="3744437008">
          <item dataType="Struct" type="Duality.Components.Transform" id="3046196110">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2988918892</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2523848380">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2988918892</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2201023684">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2039011140">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4227059268">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2523848380</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1747925554">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2988918892</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="279449787">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2988918892</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3039110922" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="78358712">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3657567454">
            <item dataType="ObjectRef">3046196110</item>
            <item dataType="ObjectRef">2523848380</item>
            <item dataType="ObjectRef">1747925554</item>
            <item dataType="ObjectRef">279449787</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3046196110</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1136370916">KH2vX3YY2kubhsPdRotd3w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1151414981">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2965041079">
        <_items dataType="Array" type="Duality.Component[]" id="1814827406">
          <item dataType="Struct" type="Duality.Components.Transform" id="1208692199">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1151414981</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="686344469">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1151414981</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="257252757">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="848828022">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1378043872">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">686344469</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4205388939">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1151414981</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2736913172">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1151414981</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1281045824" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="42298365">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2030719928">
            <item dataType="ObjectRef">1208692199</item>
            <item dataType="ObjectRef">686344469</item>
            <item dataType="ObjectRef">4205388939</item>
            <item dataType="ObjectRef">2736913172</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1208692199</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3529424599">XbcFn99BgkmmLqt1nJJM1A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="568024184">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3068039070">
        <_items dataType="Array" type="Duality.Component[]" id="2137266064">
          <item dataType="Struct" type="Duality.Components.Transform" id="625301402">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">568024184</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="102953672">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">568024184</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3478205880">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2799203436">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3050616676">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">102953672</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3621998142">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">568024184</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2153522375">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">568024184</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3827820938" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3941438140">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="250507926">
            <item dataType="ObjectRef">625301402</item>
            <item dataType="ObjectRef">102953672</item>
            <item dataType="ObjectRef">3621998142</item>
            <item dataType="ObjectRef">2153522375</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">625301402</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2637270632">KzOOJq7Wu0S6QORqpON2Tg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3895362425">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="595924315">
        <_items dataType="Array" type="Duality.Component[]" id="1447345558">
          <item dataType="Struct" type="Duality.Components.Transform" id="3952639643">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3895362425</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3430291913">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3895362425</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2530925481">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="56474126">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1826758608">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3430291913</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2654369087">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3895362425</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1185893320">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3895362425</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="349817960" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4235786929">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="997253216">
            <item dataType="ObjectRef">3952639643</item>
            <item dataType="ObjectRef">3430291913</item>
            <item dataType="ObjectRef">2654369087</item>
            <item dataType="ObjectRef">1185893320</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3952639643</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3957406563">NGfJCr88vkmbPR+xubMSFw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2089774367">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="290712029">
        <_items dataType="Array" type="Duality.Component[]" id="2778605670">
          <item dataType="Struct" type="Duality.Components.Transform" id="2147051585">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2089774367</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1624703855">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2089774367</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="265006127">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2482677486">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="825118800">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1624703855</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="848781029">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2089774367</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3675272558">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2089774367</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="35577976" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3600974007">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2721469248">
            <item dataType="ObjectRef">2147051585</item>
            <item dataType="ObjectRef">1624703855</item>
            <item dataType="ObjectRef">848781029</item>
            <item dataType="ObjectRef">3675272558</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2147051585</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3735728789">XzzCUiKRqEeusVNGLy6j/g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3325878502">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1946963568">
        <_items dataType="Array" type="Duality.Component[]" id="4237173052">
          <item dataType="Struct" type="Duality.Components.Transform" id="3383155720">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3325878502</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2860807990">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3325878502</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="211671982">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3404691792">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2846301116">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2860807990</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2084885164">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3325878502</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="616409397">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3325878502</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1355375342" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3825136066">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2940252682">
            <item dataType="ObjectRef">3383155720</item>
            <item dataType="ObjectRef">2860807990</item>
            <item dataType="ObjectRef">2084885164</item>
            <item dataType="ObjectRef">616409397</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3383155720</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3337079986">m5bElIQg/067JxalxRl0lQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2580326163">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="298949025">
        <_items dataType="Array" type="Duality.Component[]" id="2056619118">
          <item dataType="Struct" type="Duality.Components.Transform" id="2637603381">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2580326163</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2115255651">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2580326163</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1668363683">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2869303142">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1741363072">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2115255651</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1339332825">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2580326163</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4165824354">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2580326163</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1862732576" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2603010731">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4266975560">
            <item dataType="ObjectRef">2637603381</item>
            <item dataType="ObjectRef">2115255651</item>
            <item dataType="ObjectRef">1339332825</item>
            <item dataType="ObjectRef">4165824354</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2637603381</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1968969889">aZPboieiX02QCCWY891x6w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1725368817">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1004258451">
        <_items dataType="Array" type="Duality.Component[]" id="982923494">
          <item dataType="Struct" type="Duality.Components.Transform" id="1782646035">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1725368817</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1260298305">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1725368817</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3389209985">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1496440622">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="602316624">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1260298305</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="484375479">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1725368817</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3310867008">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1725368817</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2911037176" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="484376825">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1752710784">
            <item dataType="ObjectRef">1782646035</item>
            <item dataType="ObjectRef">1260298305</item>
            <item dataType="ObjectRef">484375479</item>
            <item dataType="ObjectRef">3310867008</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1782646035</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4054864635">hmYQQPPiHU+Z6WcSW5Huiw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3553064970">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1944055380">
        <_items dataType="Array" type="Duality.Component[]" id="3418412260">
          <item dataType="Struct" type="Duality.Components.Transform" id="3610342188">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3553064970</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3087994458">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3553064970</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2378689850">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1386627328">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2310353564">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3087994458</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2312071632">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3553064970</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="843595865">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3553064970</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2189826998" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2254181886">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2593845130">
            <item dataType="ObjectRef">3610342188</item>
            <item dataType="ObjectRef">3087994458</item>
            <item dataType="ObjectRef">2312071632</item>
            <item dataType="ObjectRef">843595865</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3610342188</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3821602702">tDzp5IalAE2/X92Cz2WiSg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2913698026">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1732144756">
        <_items dataType="Array" type="Duality.Component[]" id="2968612772">
          <item dataType="Struct" type="Duality.Components.Transform" id="2970975244">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2913698026</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2448627514">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2913698026</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2374442970">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1223215360">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="882283164">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2448627514</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1672704688">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2913698026</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="204228921">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2913698026</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="947734006" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2089484126">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3634830090">
            <item dataType="ObjectRef">2970975244</item>
            <item dataType="ObjectRef">2448627514</item>
            <item dataType="ObjectRef">1672704688</item>
            <item dataType="ObjectRef">204228921</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2970975244</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2407589550">BgoqRnUuZEWd3XLL6A62Sw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4182812872">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="714738638">
        <_items dataType="Array" type="Duality.Component[]" id="1262113232">
          <item dataType="Struct" type="Duality.Components.Transform" id="4240090090">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4182812872</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3717742360">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4182812872</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1025990632">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="741254188">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="688723172">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3717742360</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2941819534">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">4182812872</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1473343767">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4182812872</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4084311370" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2251873932">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4162577398">
            <item dataType="ObjectRef">4240090090</item>
            <item dataType="ObjectRef">3717742360</item>
            <item dataType="ObjectRef">2941819534</item>
            <item dataType="ObjectRef">1473343767</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4240090090</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1329133080">fMaJErw+o0GzTb6StOhgzQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1240764289">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3281509763">
        <_items dataType="Array" type="Duality.Component[]" id="3114039078">
          <item dataType="Struct" type="Duality.Components.Transform" id="1298041507">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1240764289</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="775693777">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1240764289</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2862700433">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="523586030">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1778191952">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">775693777</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4294738247">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1240764289</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2826262480">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1240764289</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1831948728" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2618640617">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2142152896">
            <item dataType="ObjectRef">1298041507</item>
            <item dataType="ObjectRef">775693777</item>
            <item dataType="ObjectRef">4294738247</item>
            <item dataType="ObjectRef">2826262480</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1298041507</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3661220171">wI2fmReghUKEOReM6aC8TQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2412577118">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2329865544">
        <_items dataType="Array" type="Duality.Component[]" id="4046489708">
          <item dataType="Struct" type="Duality.Components.Transform" id="2469854336">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2412577118</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1947506606">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2412577118</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3460961270">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="430274272">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3921369052">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1947506606</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1171583780">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2412577118</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3998075309">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2412577118</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1842619614" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2365427210">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="758791194">
            <item dataType="ObjectRef">2469854336</item>
            <item dataType="ObjectRef">1947506606</item>
            <item dataType="ObjectRef">1171583780</item>
            <item dataType="ObjectRef">3998075309</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2469854336</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3345681642">qYIqVv4GDUCxlPEmulbiNA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2337186268">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1621617842">
        <_items dataType="Array" type="Duality.Component[]" id="837634768">
          <item dataType="Struct" type="Duality.Components.Transform" id="2394463486">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2337186268</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1872115756">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2337186268</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="952247508">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1397809892">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2044250052">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1872115756</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1096192930">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2337186268</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3922684459">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2337186268</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4008765002" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3979636136">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3809957790">
            <item dataType="ObjectRef">2394463486</item>
            <item dataType="ObjectRef">1872115756</item>
            <item dataType="ObjectRef">1096192930</item>
            <item dataType="ObjectRef">3922684459</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2394463486</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3922431892">y+K8uVWVrUaeVLPZxV0Cjw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="349953431">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="645910933">
        <_items dataType="Array" type="Duality.Component[]" id="1340685942">
          <item dataType="Struct" type="Duality.Components.Transform" id="407230649">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">349953431</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4179850215">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">349953431</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1729970503">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="339595982">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="327050192">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4179850215</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3403927389">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">349953431</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1935451622">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">349953431</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3540206792" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3570490687">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4159999712">
            <item dataType="ObjectRef">407230649</item>
            <item dataType="ObjectRef">4179850215</item>
            <item dataType="ObjectRef">3403927389</item>
            <item dataType="ObjectRef">1935451622</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">407230649</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2900647405">nnG5aR5poEie4D434tL7HQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2206816691">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="97420673">
        <_items dataType="Array" type="Duality.Component[]" id="4070555438">
          <item dataType="Struct" type="Duality.Components.Transform" id="2264093909">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2206816691</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1741746179">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2206816691</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4177077251">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1380998438">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="837188864">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1741746179</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="965823353">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2206816691</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3792314882">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2206816691</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1546884448" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4177740363">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4137045832">
            <item dataType="ObjectRef">2264093909</item>
            <item dataType="ObjectRef">1741746179</item>
            <item dataType="ObjectRef">965823353</item>
            <item dataType="ObjectRef">3792314882</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2264093909</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2461256449">BCH9qK+7c0iCmp+ImGSfgg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1963821722">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3827186884">
        <_items dataType="Array" type="Duality.Component[]" id="849872708">
          <item dataType="Struct" type="Duality.Components.Transform" id="2021098940">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1963821722</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1498751210">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">1963821722</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1393569674">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1510170592">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1553439708">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1498751210</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="722828384">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">1963821722</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3549319913">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1963821722</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3366001558" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="512031566">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3930326602">
            <item dataType="ObjectRef">2021098940</item>
            <item dataType="ObjectRef">1498751210</item>
            <item dataType="ObjectRef">722828384</item>
            <item dataType="ObjectRef">3549319913</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2021098940</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1009061630">AKErSF7tfUCmvudDUiRgNg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2039068745">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4165000203">
        <_items dataType="Array" type="Duality.Component[]" id="91998326">
          <item dataType="Struct" type="Duality.Components.Transform" id="2096345963">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2039068745</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1573998233">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2039068745</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3746988089">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1923381454">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2642468816">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1573998233</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="798075407">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2039068745</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3624566936">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2039068745</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3466779336" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2332099489">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2969493280">
            <item dataType="ObjectRef">2096345963</item>
            <item dataType="ObjectRef">1573998233</item>
            <item dataType="ObjectRef">798075407</item>
            <item dataType="ObjectRef">3624566936</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2096345963</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="466251315">Zf181VKSX0+FG9d6IgZKCQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3641158038">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3598370240">
        <_items dataType="Array" type="Duality.Component[]" id="2191264540">
          <item dataType="Struct" type="Duality.Components.Transform" id="3698435256">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3641158038</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3176087526">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3641158038</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="278952414">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="357477648">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3949337404">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3176087526</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2400164700">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3641158038</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="931688933">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3641158038</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="533021774" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1659633170">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1696405450">
            <item dataType="ObjectRef">3698435256</item>
            <item dataType="ObjectRef">3176087526</item>
            <item dataType="ObjectRef">2400164700</item>
            <item dataType="ObjectRef">931688933</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3698435256</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2345532962">Qd5KGek/1kK0VXc9dXjpLQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3530468682">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1976380948">
        <_items dataType="Array" type="Duality.Component[]" id="3327851108">
          <item dataType="Struct" type="Duality.Components.Transform" id="3587745900">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3530468682</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3065398170">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3530468682</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1401347450">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4272054144">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3682386332">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3065398170</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2289475344">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3530468682</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="820999577">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3530468682</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2335393590" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="562630846">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2840143882">
            <item dataType="ObjectRef">3587745900</item>
            <item dataType="ObjectRef">3065398170</item>
            <item dataType="ObjectRef">2289475344</item>
            <item dataType="ObjectRef">820999577</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3587745900</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2608701134">aKQdnKKP90WsCRY3qmLlKQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="165596888">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1286986558">
        <_items dataType="Array" type="Duality.Component[]" id="4104402448">
          <item dataType="Struct" type="Duality.Components.Transform" id="222874106">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">165596888</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3995493672">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">165596888</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1194239384">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="997751852">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="183518436">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3995493672</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3219570846">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">165596888</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="1751095079">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">165596888</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4164130314" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1506372892">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2168352278">
            <item dataType="ObjectRef">222874106</item>
            <item dataType="ObjectRef">3995493672</item>
            <item dataType="ObjectRef">3219570846</item>
            <item dataType="ObjectRef">1751095079</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">222874106</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2636299912">kE+QAk/ptUqZhbpw0IPfbg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2584224151">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="996507029">
        <_items dataType="Array" type="Duality.Component[]" id="4281702006">
          <item dataType="Struct" type="Duality.Components.Transform" id="2641501369">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2584224151</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2119153639">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2584224151</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="782536007">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3573734094">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="888718288">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2119153639</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1343230813">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2584224151</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4169722342">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2584224151</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3639221448" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2980340031">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3854909152">
            <item dataType="ObjectRef">2641501369</item>
            <item dataType="ObjectRef">2119153639</item>
            <item dataType="ObjectRef">1343230813</item>
            <item dataType="ObjectRef">4169722342</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2641501369</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3575124461">kn2fcEU0SEiuVhhh/kH+ng==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2594273028">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1699381690">
        <_items dataType="Array" type="Duality.Component[]" id="1307473920">
          <item dataType="Struct" type="Duality.Components.Transform" id="2651550246">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2594273028</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2129202516">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2594273028</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="109762748">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3623816772">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3879778884">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2129202516</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1353279690">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2594273028</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="4179771219">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2594273028</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2700723642" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3935452160">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1974600654">
            <item dataType="ObjectRef">2651550246</item>
            <item dataType="ObjectRef">2129202516</item>
            <item dataType="ObjectRef">1353279690</item>
            <item dataType="ObjectRef">4179771219</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2651550246</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1030030492">NNhwoqUs1EyjqYTeUa1jng==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2151352257">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1876641347">
        <_items dataType="Array" type="Duality.Component[]" id="3351513126">
          <item dataType="Struct" type="Duality.Components.Transform" id="2208629475">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2151352257</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1686281745">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2151352257</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2447530705">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2507337966">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="959712336">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1686281745</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="910358919">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2151352257</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3736850448">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2151352257</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3703073464" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3891482921">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2213299648">
            <item dataType="ObjectRef">2208629475</item>
            <item dataType="ObjectRef">1686281745</item>
            <item dataType="ObjectRef">910358919</item>
            <item dataType="ObjectRef">3736850448</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2208629475</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="126420747">TvosgpnUQkiu00eXZfEhjg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2087963769">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4281775195">
        <_items dataType="Array" type="Duality.Component[]" id="1870223766">
          <item dataType="Struct" type="Duality.Components.Transform" id="2145240987">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2087963769</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1622893257">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2087963769</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2501374633">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="402686990">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="636683216">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1622893257</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="846970431">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2087963769</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3673461960">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2087963769</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1477867624" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1170977713">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1437219936">
            <item dataType="ObjectRef">2145240987</item>
            <item dataType="ObjectRef">1622893257</item>
            <item dataType="ObjectRef">846970431</item>
            <item dataType="ObjectRef">3673461960</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2145240987</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4027813475">66iFQz7f9EutYonooxpMTQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3334467869">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3206346415">
        <_items dataType="Array" type="Duality.Component[]" id="3094311918">
          <item dataType="Struct" type="Duality.Components.Transform" id="3391745087">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3334467869</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2869397357">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3334467869</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2574638733">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="413453606">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2574834944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2869397357</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2093474531">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3334467869</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="624998764">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3334467869</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="922027168" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="980042117">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1890077352">
            <item dataType="ObjectRef">3391745087</item>
            <item dataType="ObjectRef">2869397357</item>
            <item dataType="ObjectRef">2093474531</item>
            <item dataType="ObjectRef">624998764</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3391745087</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4246073999">EHt+a/8890WB5G1crRjPGA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3697932762">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="242424196">
        <_items dataType="Array" type="Duality.Component[]" id="2209380420">
          <item dataType="Struct" type="Duality.Components.Transform" id="3755209980">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3697932762</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3232862250">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3697932762</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2566833866">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4292672352">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3677753564">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3232862250</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2456939424">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">3697932762</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="988463657">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3697932762</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4269902998" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4225066894">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2954585162">
            <item dataType="ObjectRef">3755209980</item>
            <item dataType="ObjectRef">3232862250</item>
            <item dataType="ObjectRef">2456939424</item>
            <item dataType="ObjectRef">988463657</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3755209980</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2884167870">1Odgzc8mTESfbm5LS+JLFw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="802801200">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3559178646">
        <_items dataType="Array" type="Duality.Component[]" id="1755403296">
          <item dataType="Struct" type="Duality.Components.Transform" id="860078418">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">802801200</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="337730688">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">802801200</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2718123792">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2893928252">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3841701700">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">337730688</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3856775158">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">802801200</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2388299391">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">802801200</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="272433882" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1409164644">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3545244182">
            <item dataType="ObjectRef">860078418</item>
            <item dataType="ObjectRef">337730688</item>
            <item dataType="ObjectRef">3856775158</item>
            <item dataType="ObjectRef">2388299391</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">860078418</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="469722720">IEjADnB9BkCFc9AgMReq3Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="535584927">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3733668701">
        <_items dataType="Array" type="Duality.Component[]" id="778143078">
          <item dataType="Struct" type="Duality.Components.Transform" id="592862145">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">535584927</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="70514415">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">535584927</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="186622639">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2022353902">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3193935440">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">70514415</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3589558885">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">535584927</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="2121083118">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">535584927</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1662628216" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3745480759">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3998981696">
            <item dataType="ObjectRef">592862145</item>
            <item dataType="ObjectRef">70514415</item>
            <item dataType="ObjectRef">3589558885</item>
            <item dataType="ObjectRef">2121083118</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">592862145</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1170500117">ArW1GDktc0eDo4MMgx/Cog==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2336184884">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1368638218">
        <_items dataType="Array" type="Duality.Component[]" id="422720736">
          <item dataType="Struct" type="Duality.Components.Transform" id="2393462102">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2336184884</gameobj>
            <ignoreParent dataType="Bool">true</ignoreParent>
            <parentTransform />
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
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1871114372">
            <active dataType="Bool">true</active>
            <allowParent dataType="Bool">false</allowParent>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">2336184884</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">10</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3532734796">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2154170788">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3778874564">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1871114372</parent>
                  <position dataType="Struct" type="Duality.Vector2" />
                  <radius dataType="Float">64</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <userTag dataType="Int">0</userTag>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
            </shapes>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1095191546">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </areaMaterial>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customAreaMaterial />
            <customOutlineMaterial />
            <fillHollowShapes dataType="Bool">false</fillHollowShapes>
            <gameobj dataType="ObjectRef">2336184884</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <outlineWidth dataType="Float">0</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">false</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PotentialFieldFollowerComponent" id="3921683075">
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">1</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField dataType="ObjectRef">3921926792</_x003C_DynamicPotentialFieldComponent_x003E_k__BackingField>
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_PathfinderComponent_x003E_k__BackingField dataType="ObjectRef">2166427172</_x003C_PathfinderComponent_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2336184884</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="675999258" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3619010032">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">917427088</item>
            <item dataType="ObjectRef">855980782</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2372778222">
            <item dataType="ObjectRef">2393462102</item>
            <item dataType="ObjectRef">1871114372</item>
            <item dataType="ObjectRef">1095191546</item>
            <item dataType="ObjectRef">3921683075</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2393462102</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="606735692">+FOpUb44zUqi3UW5ba1QSw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">23932836</item>
    <item dataType="ObjectRef">2545817614</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
