<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="1317002254">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2060637848">
        <_items dataType="Array" type="Duality.GameObject[]" id="2899547692" length="8">
          <item dataType="Struct" type="Duality.GameObject" id="31118618">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1039613274">
              <_items dataType="Array" type="Duality.Component[]" id="2954671616" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="88395836">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">31118618</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="Struct" type="Duality.Components.Transform" id="1374279472">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">1317002254</gameobj>
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
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3531731351">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">31118618</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2711301747" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="793871654">H4sIAAAAAAAEAFNgYGAQYRgFo2AUjIJRQC4wIZMi1zAKrSWZCgST9yDUuWFHvYsEU/8Dhze1G0JZU4WqhlD1KDbsx2YR8SrJdgsDCrAEk24Q6hyE6mEgFUCMLkdx9V6sRmNVSbxFJDsXoiQdQv2HUHOJtw8KIO5MR3H1XKxGY1VJvEUkO5d2/rsLMUwZQllDKEmI3PNh4L/72ArqdxDq/TDwH/HUUPGfMplFniTxFg2Q/+gGRv1HqYaBBWT67zmKhru0cRs1ABHOBQC0Zr15iBEAAA==</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="905151712">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">31118618</gameobj>
                  <offset dataType="Float">-0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="771841978" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="474880672">
                  <item dataType="Type" id="756681948" value="Duality.Components.Transform" />
                  <item dataType="Type" id="918423830" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="1546802760" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2616939662">
                  <item dataType="ObjectRef">88395836</item>
                  <item dataType="ObjectRef">3531731351</item>
                  <item dataType="ObjectRef">905151712</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">88395836</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2946249404">/dX8vNgscEeht14EezWEuw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="150564313">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1955031557">
              <_items dataType="Array" type="Duality.Component[]" id="1729083990" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="207841531">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">150564313</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">1374279472</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3651177046">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">150564313</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2049819770" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="4004879232">H4sIAAAAAAAEAO3FQQ0AQAgEsRWBgBOHfw2Q88Cvk0z6ktTe+QEAAAAAAOCIARp9DDaIEQAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1024597407">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">150564313</gameobj>
                  <offset dataType="Float">-0.01</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3923232680" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="4246939119">
                  <item dataType="ObjectRef">756681948</item>
                  <item dataType="ObjectRef">918423830</item>
                  <item dataType="ObjectRef">1546802760</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1518551456">
                  <item dataType="ObjectRef">207841531</item>
                  <item dataType="ObjectRef">3651177046</item>
                  <item dataType="ObjectRef">1024597407</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">207841531</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2782634109">ZFeEGe6lq0uzlqSy7hCqaQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">UpperLayer</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2776199101">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1543096817">
              <_items dataType="Array" type="Duality.Component[]" id="3989496750" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2833476319">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2776199101</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">1374279472</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="1981844538">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2776199101</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="3521912030" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="2411600656">H4sIAAAAAAAEAO3PsQ0AEBBA0RvCAAZBFJjE/jMQKomCQkj8Sy6vuSu+FhFVN0sbAADYxO9iOnaGW/4bL1/qC504Iy3/jZcv9Z2APvrouwd99NF3D/ro+7SvAEZg3ISIEQAA</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="3650232195">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">2776199101</gameobj>
                  <offset dataType="Float">-0.02</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2783018976" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1193423451">
                  <item dataType="ObjectRef">756681948</item>
                  <item dataType="ObjectRef">918423830</item>
                  <item dataType="ObjectRef">1546802760</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="726124648">
                  <item dataType="ObjectRef">2833476319</item>
                  <item dataType="ObjectRef">1981844538</item>
                  <item dataType="ObjectRef">3650232195</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2833476319</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2494571409">ZzPXg0yZ+0mieuhcfTj9ag==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">TopLayer</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="641234653">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3967524241">
              <_items dataType="Array" type="Duality.Component[]" id="2350137838" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="698511871">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">641234653</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">1374279472</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="176164141">
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
                  <gameobj dataType="ObjectRef">641234653</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2308771021">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3837317158" length="32" />
                    <_size dataType="Int">0</_size>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="2304053536">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">641234653</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.300000161</shapeFriction>
                  <shapeRestitution dataType="Float">0.300000161</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="2698019820">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3531731351</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1981844538</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3651177046</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2742308512" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2894577211">
                  <item dataType="ObjectRef">756681948</item>
                  <item dataType="Type" id="1662813910" value="Duality.Components.Physics.RigidBody" />
                  <item dataType="Type" id="847200218" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="163911208">
                  <item dataType="ObjectRef">698511871</item>
                  <item dataType="ObjectRef">176164141</item>
                  <item dataType="ObjectRef">2304053536</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">698511871</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2253277617">s6LRg8AASU+eGxSg1Ij0Uw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">CollisionLayer0</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2512393540">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="149967012">
              <_items dataType="Array" type="Duality.Component[]" id="4246319300" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2569670758">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2512393540</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">1374279472</parentTransform>
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
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2047323028">
                  <active dataType="Bool">true</active>
                  <allowParent dataType="Bool">false</allowParent>
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
                  <gameobj dataType="ObjectRef">2512393540</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3040645012">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="815361892" length="18" />
                    <_size dataType="Int">0</_size>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="4175212423">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2512393540</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="409763707">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">3531731351</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">1981844538</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer1" value="2" />
                      <SourceTilemap dataType="ObjectRef">3651177046</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1531542294" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2863394542">
                  <item dataType="ObjectRef">756681948</item>
                  <item dataType="ObjectRef">1662813910</item>
                  <item dataType="ObjectRef">847200218</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1538338250">
                  <item dataType="ObjectRef">2569670758</item>
                  <item dataType="ObjectRef">2047323028</item>
                  <item dataType="ObjectRef">4175212423</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2569670758</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1154854110">2XT3V3ibHECHEFtsDmK5hw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">CollisionLayer1</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1164398644">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3638182932">
              <_items dataType="Array" type="Duality.Component[]" id="817163876" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1221675862">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1164398644</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">1374279472</parentTransform>
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
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="699328132">
                  <active dataType="Bool">true</active>
                  <allowParent dataType="Bool">false</allowParent>
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
                  <gameobj dataType="ObjectRef">1164398644</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3740506116">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3546325828" length="36" />
                    <_size dataType="Int">0</_size>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="2827217527">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1164398644</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">false</roundedCorners>
                  <shapeFriction dataType="Float">0.299999982</shapeFriction>
                  <shapeRestitution dataType="Float">0.299999982</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="3721236267">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">3531731351</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">1981844538</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer2" value="4" />
                      <SourceTilemap dataType="ObjectRef">3651177046</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2188741430" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3744842430">
                  <item dataType="ObjectRef">756681948</item>
                  <item dataType="ObjectRef">1662813910</item>
                  <item dataType="ObjectRef">847200218</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="4015480842">
                  <item dataType="ObjectRef">1221675862</item>
                  <item dataType="ObjectRef">699328132</item>
                  <item dataType="ObjectRef">2827217527</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1221675862</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2768513230">f92VHiMND0yYSJ/necP0jA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">CollisionLayer2</name>
            <parent dataType="ObjectRef">1317002254</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">6</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1903489310">
        <_items dataType="Array" type="Duality.Component[]" id="1957572954" length="4">
          <item dataType="ObjectRef">1374279472</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="2487951199">
            <_sourceNodeGrid />
            <_x003C_MaxCalculatedClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxCalculatedClearance_x003E_k__BackingField>
            <_x003C_MovementPenalties_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1317002254</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" id="3404267636">
            <_x003C_Pathfinder_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1317002254</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2563810500" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3629278696">
            <item dataType="ObjectRef">756681948</item>
            <item dataType="Type" id="3818892332" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
            <item dataType="Type" id="2958969782" value="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1166246686">
            <item dataType="ObjectRef">1374279472</item>
            <item dataType="ObjectRef">2487951199</item>
            <item dataType="ObjectRef">3404267636</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1374279472</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2093080916">j6rcRPZDkU6gX6G0gXmIPw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3451967615">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="221866621">
        <_items dataType="Array" type="Duality.Component[]" id="1408780070" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="3509244833">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3451967615</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Camera" id="703386796">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3451967615</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1030465736">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1017150060" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3283555172">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1789512214">
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
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <priority dataType="Int">0</priority>
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="81412536" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="609238807">
            <item dataType="ObjectRef">756681948</item>
            <item dataType="Type" id="3215970062" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3544283328">
            <item dataType="ObjectRef">3509244833</item>
            <item dataType="ObjectRef">703386796</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3509244833</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4276235957">tVitAF/vVky5HlNgupKJrg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1726873204">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2577520330">
        <_items dataType="Array" type="Duality.Component[]" id="3266550624" length="4">
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" id="1279318976">
            <_frameCounter dataType="Int">0</_frameCounter>
            <_gridPathfinderProxy />
            <_randomGenerator dataType="Struct" type="System.Random" id="542603856">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="587361724">0, 130527512, 455897840, 2012248707, 232979824, 865076291, 308741112, 446919214, 315868161, 995056596, 1132674555, 1290982560, 1681826226, 1787983988, 1191364971, 1290117090, 940017259, 1657610830, 2115518704, 1796881002, 304943822, 31874855, 574074395, 1943911055, 221343202, 1426606346, 1425026047, 1884458266, 703507087, 148393304, 2003869604, 2060854968, 1259466021, 401505071, 1723524582, 1723762209, 943671340, 1293138254, 1450613901, 1444391684, 2137402395, 1957313871, 1502894949, 1210515079, 75550073, 1658080023, 1020464658, 1476333288, 1107817199, 1332917508, 942823690, 375260589, 171226759, 1596859083, 148481014, 1492404935</SeedArray>
            </_randomGenerator>
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_BottomRightCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">480</X>
              <Y dataType="Int">304</Y>
            </_x003C_BottomRightCorner_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_FramesBetweenRequest_x003E_k__BackingField dataType="Int">0</_x003C_FramesBetweenRequest_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_TopLeftCorner_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
              <X dataType="Int">-480</X>
              <Y dataType="Int">-304</Y>
            </_x003C_TopLeftCorner_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1726873204</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="3159545402">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1726873204</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="557842074" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2004471728">
            <item dataType="Type" id="4172327356" value="Duality.Plugins.Pathfindax.Examples.Components.PathfindaxPathSpammerComponent" />
            <item dataType="Type" id="4284914326" value="Duality.Plugins.Pathfindax.Components.PathVisualizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3710376302">
            <item dataType="ObjectRef">1279318976</item>
            <item dataType="ObjectRef">3159545402</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3595893772">eTHRubD2mEiX4ud1C2e7iA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfindaxPathSpammerComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">31118618</item>
    <item dataType="ObjectRef">150564313</item>
    <item dataType="ObjectRef">2776199101</item>
    <item dataType="ObjectRef">641234653</item>
    <item dataType="ObjectRef">2512393540</item>
    <item dataType="ObjectRef">1164398644</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
