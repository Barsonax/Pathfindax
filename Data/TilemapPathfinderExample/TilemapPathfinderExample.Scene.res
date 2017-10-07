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
        <_items dataType="Array" type="Duality.GameObject[]" id="1305797862" length="8">
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
                      <data dataType="Array" type="System.Byte[]" id="632110822">H4sIAAAAAAAEAFNgYGAQYRgFo2AUjIJRQC4wIZMi1zAKrSWZCgST9yDUuWFHvYsEU/8Dhze1G0JZU4WqhlD1KDbsx2YR8SrJdgsDCrAEk24Q6hyE6mEgFUCMLkdx9V6sRmNVSbxFJDsXoiQdQv2HUHOJtw8KIO5MR3H1XKxGY1VJvEUkO5d2/rsLMUwZQllDKEmI3PNh4L/72ArqdxDq/TDwH/HUUPGfMplFniTxFg2Q/+gGRv1HqYaBBWT67zmKhru0cRs1ABHOBQC0Zr15iBEAAA==</data>
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
                      <data dataType="Array" type="System.Byte[]" id="3132992038">H4sIAAAAAAAEAO3FQQ0AQAgEsRWBgBOHfw2Q88Cvk0z6ktTe+QEAAAAAAOCIARp9DDaIEQAA</data>
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
                      <data dataType="Array" type="System.Byte[]" id="821696358">H4sIAAAAAAAEAO3PsQ0AEBBA0RvCAAZBFJjE/jMQKomCQkj8Sy6vuSu+FhFVN0sbAADYxO9iOnaGW/4bL1/qC504Iy3/jZcv9Z2APvrouwd99NF3D/ro+7SvAEZg3ISIEQAA</data>
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
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1334378230" length="32" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">3138</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="648828488">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2534534569</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.300000161</shapeFriction>
                  <shapeRestitution dataType="Float">0.300000161</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="3581845140">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1165387943</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1777160551</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">2411459351</SourceTilemap>
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
            <name dataType="String">CollisionLayer0</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2542744642">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="136622870">
              <_items dataType="Array" type="Duality.Component[]" id="1943627040" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="608092278">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2542744642</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">853176405</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.001</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.001</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1310553870">
                  <active dataType="Bool">true</active>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat2" value="2" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                  <continous dataType="Bool">false</continous>
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">2542744642</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4024139598">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2712052432" length="18" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">292</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="657038561">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2542744642</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="426092805">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">1165387943</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">1777160551</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">2411459351</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="625465306" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2410860516">
                  <item dataType="ObjectRef">2883838748</item>
                  <item dataType="ObjectRef">1371833190</item>
                  <item dataType="ObjectRef">2678097722</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3812767766">
                  <item dataType="ObjectRef">608092278</item>
                  <item dataType="ObjectRef">1310553870</item>
                  <item dataType="ObjectRef">657038561</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">608092278</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="267078112">2XT3V3ibHECHEFtsDmK5hw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">CollisionLayer1</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2360775164">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3675998872">
              <_items dataType="Array" type="Duality.Component[]" id="267132460" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="426122800">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2360775164</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">853176405</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.002</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0.002</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1128584392">
                  <active dataType="Bool">true</active>
                  <angularDamp dataType="Float">0.3</angularDamp>
                  <angularVel dataType="Float">0</angularVel>
                  <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                  <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat3" value="4" />
                  <colFilter />
                  <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
                  <continous dataType="Bool">false</continous>
                  <explicitInertia dataType="Float">0</explicitInertia>
                  <explicitMass dataType="Float">0</explicitMass>
                  <fixedAngle dataType="Bool">false</fixedAngle>
                  <gameobj dataType="ObjectRef">2360775164</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4164727456">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2124520668" length="36" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">212</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="475069083">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2360775164</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">false</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="834379671">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">1165387943</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">1777160551</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">2411459351</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3715275038" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="728081754">
                  <item dataType="ObjectRef">2883838748</item>
                  <item dataType="ObjectRef">1371833190</item>
                  <item dataType="ObjectRef">2678097722</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="143044538">
                  <item dataType="ObjectRef">426122800</item>
                  <item dataType="ObjectRef">1128584392</item>
                  <item dataType="ObjectRef">475069083</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">426122800</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1588595546">f92VHiMND0yYSJ/necP0jA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">CollisionLayer2</name>
            <parent dataType="ObjectRef">2787828769</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">6</_size>
        <_version dataType="Int">6</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3244344056">
        <_items dataType="Array" type="Duality.Component[]" id="3612575113" length="4">
          <item dataType="ObjectRef">853176405</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="3011996028">
            <_counter dataType="Long">0</_counter>
            <_nodeGrid />
            <_nodeGridVisualizer />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MaxCalculatedClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxCalculatedClearance_x003E_k__BackingField>
            <_x003C_MovementPenalties_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2787828769</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" id="140219303">
            <_counter dataType="Int">0</_counter>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_NodeGridVisualizer_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_ShowNodeGrid_x003E_k__BackingField dataType="Bool">true</_x003C_ShowNodeGrid_x003E_k__BackingField>
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2787828769</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">13</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1279086665" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1378552084">
            <item dataType="ObjectRef">2883838748</item>
            <item dataType="Type" id="2768341092" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
            <item dataType="Type" id="2335593494" value="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="648235318">
            <item dataType="ObjectRef">853176405</item>
            <item dataType="ObjectRef">3011996028</item>
            <item dataType="ObjectRef">140219303</item>
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
    <item dataType="Struct" type="Duality.GameObject" id="3169981517">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2502512767">
        <_items dataType="Array" type="Duality.Component[]" id="1791707950" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1235329153">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3169981517</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-300</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-300</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3707257324">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3169981517</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="530797752">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2202853484" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1548365668">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="4270144022">
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
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4172140896" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3680211893">
            <item dataType="ObjectRef">2883838748</item>
            <item dataType="Type" id="3769059062" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2813469512">
            <item dataType="ObjectRef">1235329153</item>
            <item dataType="ObjectRef">3707257324</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1235329153</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2127217407">tVitAF/vVky5HlNgupKJrg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2824960361">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2149991275">
        <_items dataType="Array" type="Duality.Component[]" id="91327606" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" id="3820961495">
            <_counter dataType="Int">0</_counter>
            <_randomGenerator dataType="Struct" type="System.Random" id="2191485559">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="1759345038">0, 130527512, 455897840, 2012248707, 232979824, 865076291, 308741112, 446919214, 315868161, 995056596, 1132674555, 1290982560, 1681826226, 1787983988, 1191364971, 1290117090, 940017259, 1657610830, 2115518704, 1796881002, 304943822, 31874855, 574074395, 1943911055, 221343202, 1426606346, 1425026047, 1884458266, 703507087, 148393304, 2003869604, 2060854968, 1259466021, 401505071, 1723524582, 1723762209, 943671340, 1293138254, 1450613901, 1444391684, 2137402395, 1957313871, 1502894949, 1210515079, 75550073, 1658080023, 1020464658, 1476333288, 1107817199, 1332917508, 942823690, 375260589, 171226759, 1596859083, 148481014, 1492404935</SeedArray>
            </_randomGenerator>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">304</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Clearance_x003E_k__BackingField dataType="Byte">0</_x003C_Clearance_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_PathfinderProxy_x003E_k__BackingField dataType="Struct" type="Duality.Plugins.Pathfindax.PathfindEngine.GridPathfinderProxy" id="3444653376">
              <_pathfinderComponent />
              <_x003C_PathfinderId_x003E_k__BackingField />
            </_x003C_PathfinderProxy_x003E_k__BackingField>
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">-480</X>
              <Y dataType="Int">-304</Y>
            </_x003C_TopLeftCorner_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2824960361</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2102136520" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="548704193">
            <item dataType="Type" id="455449774" value="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3939989728">
            <item dataType="ObjectRef">3820961495</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3791737619">eTHRubD2mEiX4ud1C2e7iA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfindaxPathSpammerComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">3458503222</item>
    <item dataType="ObjectRef">409607334</item>
    <item dataType="ObjectRef">4070275830</item>
    <item dataType="ObjectRef">2534534569</item>
    <item dataType="ObjectRef">2542744642</item>
    <item dataType="ObjectRef">2360775164</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
