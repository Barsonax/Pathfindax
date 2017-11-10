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
        <_items dataType="Array" type="Duality.GameObject[]" id="2114344598">
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
                      <data dataType="Array" type="System.Byte[]" id="3824240934">H4sIAAAAAAAEAFNgYGAQYUAHBRgixIFAMFkOof5DqL1kmjUYAcRH6Sj+mztgrqE+GPUfDJhQkyLCaOqAkRx/ByDUQQh1iFSjKdSOCjgYwRQnhOKCUNwQiocRt76h4j9yAT7/nYBQJyHUKQgVDAmsEEaCPKza6Q3w+U8BQilCKCUIRbz/sGqnN8Dmv7tQOQ0IpQmhtEg1mkLtqEAOEmbyeLIaVoDNf/c9wNQ9TzB1zgtCQQTP0UvwHYkewQGw+e9/AAovaGAEKfUZBECMVoZQ1lAqAkJFQqioARGsptRno2AUjIJRMAqGJwAA+5AIv4gRAAA=</data>
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
          <item dataType="Struct" type="Duality.GameObject" id="4201163298">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1775905174">
              <_items dataType="Array" type="Duality.Component[]" id="2570826784" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="4258440516">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">4201163298</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">4009962089</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3406808735">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4201163298</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1250447995" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="3250819414">H4sIAAAAAAAEAO3PUQkAIBBEwQ1hAKNcF/t3UPwzwYHMwmO+dyYZp5W7l/oH/wAAAAAAQDcbKeejZYgRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="780229096">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">4201163298</gameobj>
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
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="29745882" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3272850788">
                  <item dataType="ObjectRef">4173822160</item>
                  <item dataType="ObjectRef">1491354222</item>
                  <item dataType="ObjectRef">3520771756</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="971010582">
                  <item dataType="ObjectRef">4258440516</item>
                  <item dataType="ObjectRef">3406808735</item>
                  <item dataType="ObjectRef">780229096</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">4258440516</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="4152614496">CdGp6LTQMku8ZF4mcJe53g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">UpperLayer</name>
            <parent dataType="ObjectRef">3952684871</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="962511479">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="416430615">
              <_items dataType="Array" type="Duality.Component[]" id="1778694926" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1019788697">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">962511479</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">4009962089</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="168156916">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">962511479</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1608059616" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="4196673500">H4sIAAAAAAAEAO2Wb2oCMRDFs9XeoAfwHFaLVOslrLDgCsJa8F792C/qqeo/sFVB8eXLwJB9u8muFiroj4Q3mTeYMNMwxjxdviNz/Uh0SsBYQxmJJDzri2nlN7AC1n6ueXjWN6GVe+AH+A1ifhrkFBdmtNJE+AVSv7QtoC3wAgR9aoTPObAAlnkzqOE94E2gn/doAp7/wwbYArsSDHrCs74DcAROVbnm4VlfDa+xDjxG1ZonENPKT7FqopTnKHOlhlcGvj98idUrzHejzJUaXj7sxST6wwB4B4YVbxKluJAKxJrENqIEGAul3FSVIxFAKBOHl6Kw9U3ESsWHUE7FZurYJI5OtYCiFalw3VaZfZbXrg1Qr6KaiHg5NxqJLYr2fr5l5R6Jg44jRXt/QivlSPyQ3X2DjiN32Pvv0NI//jbOmsmYbogRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\Tilesets\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1836544573">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">962511479</gameobj>
                  <offset dataType="Float">-0.02</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">10</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1387238592" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3724342685">
                  <item dataType="ObjectRef">4173822160</item>
                  <item dataType="ObjectRef">1491354222</item>
                  <item dataType="ObjectRef">3520771756</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3276551416">
                  <item dataType="ObjectRef">1019788697</item>
                  <item dataType="ObjectRef">168156916</item>
                  <item dataType="ObjectRef">1836544573</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1019788697</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3687825975">zt8eZg2rQkaha2b2EZ/U1g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">TopLayer</name>
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
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3042080400" length="32" />
                    <_size dataType="Int">0</_size>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="4208636497">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2545817614</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.300000161</shapeFriction>
                  <shapeRestitution dataType="Float">0.300000161</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="2242013109">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3524545569</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3406808735</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">168156916</SourceTilemap>
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
        <_size dataType="Int">4</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3380947304">
        <_items dataType="Array" type="Duality.Component[]" id="813695631" length="8">
          <item dataType="ObjectRef">4009962089</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="828666520">
            <_movementPenalties dataType="Array" type="System.Single[]" id="3614682646">1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1</_movementPenalties>
            <_sourceNodeGrid />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.FlowFieldPathfinderComponent" id="3854886248">
            <_dijkstraNodeGrids dataType="Struct" type="System.Collections.Generic.List`1[[Pathfindax.Grid.DijkstraNodeGrid]]" id="464045830">
              <_items dataType="Array" type="Pathfindax.Grid.DijkstraNodeGrid[]" id="2618384768" length="0" />
              <_size dataType="Int">0</_size>
            </_dijkstraNodeGrids>
            <_x003C_MaxClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxClearance_x003E_k__BackingField>
            <_x003C_Pathfinder_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2414404911" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="122282212">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="Type" id="2821304260" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
            <item dataType="Type" id="2365687190" value="Duality.Plugins.Pathfindax.Components.FlowFieldPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2498106902">
            <item dataType="ObjectRef">4009962089</item>
            <item dataType="ObjectRef">828666520</item>
            <item dataType="ObjectRef">3854886248</item>
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
    <item dataType="Struct" type="Duality.GameObject" id="4211846889">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="496016107">
        <_items dataType="Array" type="Duality.Component[]" id="3833294966" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="4269124107">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4211846889</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.254028</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.254028</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3746776377">
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
            <gameobj dataType="ObjectRef">4211846889</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2163002009">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3725612622" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1715125968">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3746776377</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2970853551">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">4211846889</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2899077328">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="1603001729">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">11000</farZ>
              <focusDist dataType="Float">620</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="56615252">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1648704019">
                  <_items dataType="Array" type="Duality.Component[]" id="4190450406" length="4">
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
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="967410936" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="663313017">
                      <item dataType="ObjectRef">4173822160</item>
                      <item dataType="Type" id="2446961486" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="2926058880">
                      <item dataType="ObjectRef">113892470</item>
                      <item dataType="ObjectRef">1603001729</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">113892470</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="613334907">Bi0BjLD3vEewiNO87xYQAg==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="2215348725">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="3519324278" length="8">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1689706464">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3726680974">
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
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4211846889</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.PathVisualizer" id="1349551791">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">false</_x003C_Visualize_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4211846889</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="289342152" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="325124929">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="Type" id="2152382894" value="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" />
            <item dataType="Type" id="2951473866" value="Duality.Components.Renderers.RigidBodyRenderer" />
            <item dataType="Type" id="346186526" value="Duality.Plugins.Pathfindax.Components.PathVisualizer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2466648544">
            <item dataType="ObjectRef">4269124107</item>
            <item dataType="ObjectRef">3746776377</item>
            <item dataType="ObjectRef">2899077328</item>
            <item dataType="ObjectRef">2970853551</item>
            <item dataType="ObjectRef">1349551791</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4269124107</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3677733267">4h3oEfM9Jk6GfOHS5bbk3Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIconWithPathVisualizer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">56615252</item>
    <item dataType="Struct" type="Duality.GameObject" id="1594665961">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2229655019">
        <_items dataType="Array" type="Duality.Component[]" id="263027318">
          <item dataType="Struct" type="Duality.Components.Transform" id="1651943179">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1594665961</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.244965</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.244965</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1129595449">
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
            <gameobj dataType="ObjectRef">1594665961</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4066656153">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2369152078">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1340909264">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1129595449</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="353672623">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">1594665961</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="281896400">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1594665961</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2814578888" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="57665089">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1103089120">
            <item dataType="ObjectRef">1651943179</item>
            <item dataType="ObjectRef">1129595449</item>
            <item dataType="ObjectRef">281896400</item>
            <item dataType="ObjectRef">353672623</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1651943179</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2284288147">xh8yyJDOz0SAzVdYy19kmw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="132440089">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2112853819">
        <_items dataType="Array" type="Duality.Component[]" id="3849325270">
          <item dataType="Struct" type="Duality.Components.Transform" id="189717307">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">132440089</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.245972</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.245972</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3962336873">
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
            <gameobj dataType="ObjectRef">132440089</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3641978889">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="498048654">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2243461328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3962336873</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3186414047">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">132440089</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3114637824">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">132440089</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2443446824" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1543756881">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="162064544">
            <item dataType="ObjectRef">189717307</item>
            <item dataType="ObjectRef">3962336873</item>
            <item dataType="ObjectRef">3114637824</item>
            <item dataType="ObjectRef">3186414047</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">189717307</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="22421187">0GhDwy4KiEeyIVtbNW5A/A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3133868306">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2406424060">
        <_items dataType="Array" type="Duality.Component[]" id="2501995332">
          <item dataType="Struct" type="Duality.Components.Transform" id="3191145524">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3133868306</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.246979</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.246979</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2668797794">
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
            <gameobj dataType="ObjectRef">3133868306</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3456612178">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2550794576">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3675208636">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2668797794</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1892874968">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">3133868306</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1821098745">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3133868306</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2593222550" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3347153750">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3090700506">
            <item dataType="ObjectRef">3191145524</item>
            <item dataType="ObjectRef">2668797794</item>
            <item dataType="ObjectRef">1821098745</item>
            <item dataType="ObjectRef">1892874968</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3191145524</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3701894006">JzZ0apd5JEuUgWMovWLktQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="855491649">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2538155203">
        <_items dataType="Array" type="Duality.Component[]" id="1284342310">
          <item dataType="Struct" type="Duality.Components.Transform" id="912768867">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">855491649</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.248</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.248</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="390421137">
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
            <gameobj dataType="ObjectRef">855491649</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="951430993">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1469208558">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="329481808">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">390421137</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3909465607">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">855491649</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3837689384">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">855491649</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="450660536" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3146376105">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4216116160">
            <item dataType="ObjectRef">912768867</item>
            <item dataType="ObjectRef">390421137</item>
            <item dataType="ObjectRef">3837689384</item>
            <item dataType="ObjectRef">3909465607</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">912768867</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4202307467">xQLjuU2jwk26SFKcyqGDkQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="222638736">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1008766390">
        <_items dataType="Array" type="Duality.Component[]" id="3428010336">
          <item dataType="Struct" type="Duality.Components.Transform" id="279915954">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">222638736</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.249</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.249</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4052535520">
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
            <gameobj dataType="ObjectRef">222638736</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3495790256">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2237209532">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2026176068">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">4052535520</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3276612694">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">222638736</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3204836471">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">222638736</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1808892058" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3919400580">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2443384982">
            <item dataType="ObjectRef">279915954</item>
            <item dataType="ObjectRef">4052535520</item>
            <item dataType="ObjectRef">3204836471</item>
            <item dataType="ObjectRef">3276612694</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">279915954</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="146256448">w/NE83w7nESoJ0QnpgLDhw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2628198395">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1020692105">
        <_items dataType="Array" type="Duality.Component[]" id="1352824718">
          <item dataType="Struct" type="Duality.Components.Transform" id="2685475613">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2628198395</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.25</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.25</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2163127883">
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
            <gameobj dataType="ObjectRef">2628198395</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1078308491">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3320679030">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3744204768">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2163127883</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1387205057">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">2628198395</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1315428834">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2628198395</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1024685888" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="863715139">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1401533624">
            <item dataType="ObjectRef">2685475613</item>
            <item dataType="ObjectRef">2163127883</item>
            <item dataType="ObjectRef">1315428834</item>
            <item dataType="ObjectRef">1387205057</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2685475613</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1228416873">ySAqmJnKXkSM7h6EIlziPw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2768015428">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4067367034">
        <_items dataType="Array" type="Duality.Component[]" id="4131906432">
          <item dataType="Struct" type="Duality.Components.Transform" id="2825292646">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2768015428</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.251</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.251</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2302944916">
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
            <gameobj dataType="ObjectRef">2768015428</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2463967612">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="607847492">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3102408260">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2302944916</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1527022090">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">2768015428</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1455245867">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2768015428</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1347408698" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2839188416">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2976918606">
            <item dataType="ObjectRef">2825292646</item>
            <item dataType="ObjectRef">2302944916</item>
            <item dataType="ObjectRef">1455245867</item>
            <item dataType="ObjectRef">1527022090</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2825292646</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1629091676">cerWvT68LUCRJ5i/bN/vPg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2691933179">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3547853449">
        <_items dataType="Array" type="Duality.Component[]" id="2156865422">
          <item dataType="Struct" type="Duality.Components.Transform" id="2749210397">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2691933179</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.252</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.252</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2226862667">
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
            <gameobj dataType="ObjectRef">2691933179</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="578871947">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4211690102">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="893028320">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2226862667</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1450939841">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">2691933179</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1379163618">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2691933179</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1510852416" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3667544899">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3738584248">
            <item dataType="ObjectRef">2749210397</item>
            <item dataType="ObjectRef">2226862667</item>
            <item dataType="ObjectRef">1379163618</item>
            <item dataType="ObjectRef">1450939841</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2749210397</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="262636393">Tgq1ytjV1UW96f5UAsHKnA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4045966803">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3285907681">
        <_items dataType="Array" type="Duality.Component[]" id="1328404334">
          <item dataType="Struct" type="Duality.Components.Transform" id="4103244021">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4045966803</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.253021</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.253021</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3580896291">
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
            <gameobj dataType="ObjectRef">4045966803</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1511461347">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4073084134">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="406564224">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3580896291</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2804973465">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">4045966803</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2733197242">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4045966803</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="750373408" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3954920811">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1995216584">
            <item dataType="ObjectRef">4103244021</item>
            <item dataType="ObjectRef">3580896291</item>
            <item dataType="ObjectRef">2733197242</item>
            <item dataType="ObjectRef">2804973465</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4103244021</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2545366625">vftFYp3weEiZqXJanfXUfw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="930420104">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="88678926">
        <_items dataType="Array" type="Duality.Component[]" id="2769711056">
          <item dataType="Struct" type="Duality.Components.Transform" id="987697322">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">930420104</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.243958</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.243958</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="465349592">
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
            <gameobj dataType="ObjectRef">930420104</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1897964584">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3368990124">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3257949412">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">465349592</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3984394062">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">930420104</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3912617839">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">930420104</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="447979338" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1062832076">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="268247798">
            <item dataType="ObjectRef">987697322</item>
            <item dataType="ObjectRef">465349592</item>
            <item dataType="ObjectRef">3912617839</item>
            <item dataType="ObjectRef">3984394062</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">987697322</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1178705880">q80a4kr8pkeMBS9CUgtJrQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="72174624">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="910440614">
        <_items dataType="Array" type="Duality.Component[]" id="2997076480">
          <item dataType="Struct" type="Duality.Components.Transform" id="129451842">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">72174624</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.24295</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.24295</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3902071408">
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
            <gameobj dataType="ObjectRef">72174624</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3774245088">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2604621788">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="627665604">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3902071408</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3126148582">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">72174624</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3054372359">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">72174624</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3876920250" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3735718164">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="580864310">
            <item dataType="ObjectRef">129451842</item>
            <item dataType="ObjectRef">3902071408</item>
            <item dataType="ObjectRef">3054372359</item>
            <item dataType="ObjectRef">3126148582</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">129451842</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2760070064">IFOy0O0eZkCt4AZse/Xobw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3549732989">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1881518287">
        <_items dataType="Array" type="Duality.Component[]" id="4125528110">
          <item dataType="Struct" type="Duality.Components.Transform" id="3607010207">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3549732989</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.241943</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.241943</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3084662477">
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
            <gameobj dataType="ObjectRef">3549732989</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2341937325">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3886654310">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3447236480">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3084662477</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2308739651">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">3549732989</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2236963428">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3549732989</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2237066848" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1483177189">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2535743336">
            <item dataType="ObjectRef">3607010207</item>
            <item dataType="ObjectRef">3084662477</item>
            <item dataType="ObjectRef">2236963428</item>
            <item dataType="ObjectRef">2308739651</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3607010207</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3443488815">dN55o+2oWkKdvkFjkZcUxw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="779252234">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2761998420">
        <_items dataType="Array" type="Duality.Component[]" id="1696310500">
          <item dataType="Struct" type="Duality.Components.Transform" id="836529452">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">779252234</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.240936</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.240936</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="314181722">
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
            <gameobj dataType="ObjectRef">779252234</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3445222202">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="140040448">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2623853212">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">314181722</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3833226192">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">779252234</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3761449969">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">779252234</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="969018294" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2278914046">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="934423434">
            <item dataType="ObjectRef">836529452</item>
            <item dataType="ObjectRef">314181722</item>
            <item dataType="ObjectRef">3761449969</item>
            <item dataType="ObjectRef">3833226192</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">836529452</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2469794190">7oaqJQxEtkS29K4B7UI3fg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2157056356">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2369970778">
        <_items dataType="Array" type="Duality.Component[]" id="2968263680">
          <item dataType="Struct" type="Duality.Components.Transform" id="2214333574">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2157056356</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.239929</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.239929</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1691985844">
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
            <gameobj dataType="ObjectRef">2157056356</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4138643036">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3809955012">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3180783428">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1691985844</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="916063018">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">2157056356</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="844286795">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2157056356</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3789527482" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2468712864">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1351843470">
            <item dataType="ObjectRef">2214333574</item>
            <item dataType="ObjectRef">1691985844</item>
            <item dataType="ObjectRef">844286795</item>
            <item dataType="ObjectRef">916063018</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2214333574</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3007444412">eFdk6vGp5ESjVrlwPpEOug==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3169830737">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3691915443">
        <_items dataType="Array" type="Duality.Component[]" id="2800398374">
          <item dataType="Struct" type="Duality.Components.Transform" id="3227107955">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3169830737</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.238922</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.238922</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2704760225">
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
            <gameobj dataType="ObjectRef">3169830737</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="296716001">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3430478702">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2674691152">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2704760225</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1928837399">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">3169830737</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1857061176">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3169830737</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2612122296" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1731848921">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="382014976">
            <item dataType="ObjectRef">3227107955</item>
            <item dataType="ObjectRef">2704760225</item>
            <item dataType="ObjectRef">1857061176</item>
            <item dataType="ObjectRef">1928837399</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3227107955</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2944614299">mcj1+OBLUUCxz1mmFbTZog==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="187071844">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3617654362">
        <_items dataType="Array" type="Duality.Component[]" id="1212550144">
          <item dataType="Struct" type="Duality.Components.Transform" id="244349062">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">187071844</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2379</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2379</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4016968628">
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
            <gameobj dataType="ObjectRef">187071844</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1504371292">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1429601476">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2456618820">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">4016968628</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3241045802">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">187071844</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3169269579">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">187071844</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2854365626" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2028260768">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3717338766">
            <item dataType="ObjectRef">244349062</item>
            <item dataType="ObjectRef">4016968628</item>
            <item dataType="ObjectRef">3169269579</item>
            <item dataType="ObjectRef">3241045802</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">244349062</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2850953660">u1o1q6BIW0i4luYz9eJbVw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4167907067">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="704385929">
        <_items dataType="Array" type="Duality.Component[]" id="2148672910">
          <item dataType="Struct" type="Duality.Components.Transform" id="4225184285">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4167907067</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2369</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2369</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3702836555">
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
            <gameobj dataType="ObjectRef">4167907067</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="946579339">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2023213174">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2040889312">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3702836555</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2926913729">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">4167907067</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2855137506">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4167907067</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2730826048" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="563954243">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2967257784">
            <item dataType="ObjectRef">4225184285</item>
            <item dataType="ObjectRef">3702836555</item>
            <item dataType="ObjectRef">2855137506</item>
            <item dataType="ObjectRef">2926913729</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4225184285</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4268131945">syhfL4YdQUmOWs4J9fiyzw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2646144669">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2832121391">
        <_items dataType="Array" type="Duality.Component[]" id="784372462">
          <item dataType="Struct" type="Duality.Components.Transform" id="2703421887">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2646144669</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2359</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2359</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2181074157">
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
            <gameobj dataType="ObjectRef">2646144669</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3636598285">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="765090598">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3604294912">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2181074157</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1405151331">
            <active dataType="Bool">true</active>
            <areaMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
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
            <gameobj dataType="ObjectRef">2646144669</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1333375108">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2646144669</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1125335968" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3390371845">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1409384360">
            <item dataType="ObjectRef">2703421887</item>
            <item dataType="ObjectRef">2181074157</item>
            <item dataType="ObjectRef">1333375108</item>
            <item dataType="ObjectRef">1405151331</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2703421887</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1625995279">HzDQ55nNPkuudTdd17q6rg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">23932836</item>
    <item dataType="ObjectRef">4201163298</item>
    <item dataType="ObjectRef">962511479</item>
    <item dataType="ObjectRef">2545817614</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
