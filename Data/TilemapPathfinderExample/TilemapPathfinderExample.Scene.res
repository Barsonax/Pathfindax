<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2787828769">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1257254627">
        <_items dataType="Array" type="Duality.GameObject[]" id="1305797862">
          <item dataType="Struct" type="Duality.GameObject" id="3458503222">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="591607290">
              <_items dataType="Array" type="Duality.Component[]" id="3747923328" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1523850858">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3458503222</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="Struct" type="Duality.Components.Transform" id="853176405">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">2787828769</gameobj>
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
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="1165387943">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3458503222</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="3782427491" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="632110822">H4sIAAAAAAAEAO2UOw7CMAyGwx04QGACJkAMtDfgMfAagBMDa0dGRpC4AhJ/F4OV2hRIE/VbPlWyE/9KE2uMaZpXDtAROkEtojZpyKBp46nz24IVw0I0Suz5ukQ90kDz3fF1LZYnLMQeFQvNJ5cnOhB7VC4uxbpBofzJajzd1FHkmkSuZeTa/UBrssPmK5WfitKHBtCQKxGwgPKpV46l2Uo56nHHUAKl2v1y2Knp0omjUo563L/lSx2VciqRbw6xr9uMVIaZT65Q8m0h9VO5127kKR9LyavGUucr2yCnzqdHMO4DSEgJSogRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="2156611374">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">3458503222</gameobj>
                  <offset dataType="Float">-0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3888314682" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1334073408">
                  <item dataType="Type" id="2883838748" value="Duality.Components.Transform" />
                  <item dataType="Type" id="2057793046" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="1657831560" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3420888142">
                  <item dataType="ObjectRef">1523850858</item>
                  <item dataType="ObjectRef">1165387943</item>
                  <item dataType="ObjectRef">2156611374</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1523850858</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3352796892">/dX8vNgscEeht14EezWEuw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="409607334">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="382249834">
              <_items dataType="Array" type="Duality.Component[]" id="2526577184" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2769922266">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">409607334</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">853176405</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="2411459351">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">409607334</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="4147443635" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="3132992038">H4sIAAAAAAAEAO3FQQ0AQAgEsRWBgJOCf1WQ88Cvk0z6ktTe+QEAAAAAAOCIAVoBQEaIEQAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="3402682782">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">409607334</gameobj>
                  <offset dataType="Float">-0.01</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2614895834" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1218448720">
                  <item dataType="ObjectRef">2883838748</item>
                  <item dataType="ObjectRef">2057793046</item>
                  <item dataType="ObjectRef">1657831560</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1852370798">
                  <item dataType="ObjectRef">2769922266</item>
                  <item dataType="ObjectRef">2411459351</item>
                  <item dataType="ObjectRef">3402682782</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2769922266</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3372857644">ZFeEGe6lq0uzlqSy7hCqaQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">UpperLayer</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="4070275830">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2015499706">
              <_items dataType="Array" type="Duality.Component[]" id="159178752" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2135623466">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">4070275830</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">853176405</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="1777160551">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4070275830</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="4117116323" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="821696358">H4sIAAAAAAAEAO3OwQkAIAwEwRRhARai4kPt0aedKqaFCAH34JjvRhEJ51Xu/mJ6iHjI8hABAGYkJSvFQ5IpTenK8JAEAAAAAGDNBi+vUmKIEQAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="2768383982">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">4070275830</gameobj>
                  <offset dataType="Float">-0.02</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1839254970" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="184502272">
                  <item dataType="ObjectRef">2883838748</item>
                  <item dataType="ObjectRef">2057793046</item>
                  <item dataType="ObjectRef">1657831560</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3913722830">
                  <item dataType="ObjectRef">2135623466</item>
                  <item dataType="ObjectRef">1777160551</item>
                  <item dataType="ObjectRef">2768383982</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2135623466</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="684437660">ZzPXg0yZ+0mieuhcfTj9ag==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">TopLayer</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2534534569">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2889268777">
              <_items dataType="Array" type="Duality.Component[]" id="2953918990" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="599882205">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2534534569</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">853176405</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1302343797">
                  <active dataType="Bool">true</active>
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
                  <gameobj dataType="ObjectRef">2534534569</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2417071285">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1334378230" length="16" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">1122</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="648828488">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2534534569</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="3581845140">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1165387943</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">2411459351</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1777160551</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1943712704" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2879783843">
                  <item dataType="ObjectRef">2883838748</item>
                  <item dataType="Type" id="1371833190" value="Duality.Components.Physics.RigidBody" />
                  <item dataType="Type" id="2678097722" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3803302776">
                  <item dataType="ObjectRef">599882205</item>
                  <item dataType="ObjectRef">1302343797</item>
                  <item dataType="ObjectRef">648828488</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">599882205</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="91574281">s6LRg8AASU+eGxSg1Ij0Uw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">WorldGeometry</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3244344056">
        <_items dataType="Array" type="Duality.Component[]" id="3612575113" length="4">
          <item dataType="ObjectRef">853176405</item>
          <item dataType="Struct" type="Pathfindax.Duality.Tilemaps.Components.TilemapNodeGridGenerator" id="1370531804">
            <_nodeGrid />
            <_nodeVisualizer />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <foo dataType="Int">0</foo>
            <gameobj dataType="ObjectRef">2787828769</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1279086665" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1378552084">
            <item dataType="ObjectRef">2883838748</item>
            <item dataType="Type" id="2768341092" value="Pathfindax.Duality.Tilemaps.Components.TilemapNodeGridGenerator" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="648235318">
            <item dataType="ObjectRef">853176405</item>
            <item dataType="ObjectRef">1370531804</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">853176405</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3743404976">j6rcRPZDkU6gX6G0gXmIPw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">3458503222</item>
    <item dataType="ObjectRef">409607334</item>
    <item dataType="ObjectRef">4070275830</item>
    <item dataType="ObjectRef">2534534569</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
