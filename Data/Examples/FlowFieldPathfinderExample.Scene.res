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
            <_x003C_MaxCachedFlowFields_x003E_k__BackingField dataType="Int">100</_x003C_MaxCachedFlowFields_x003E_k__BackingField>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2163002009">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3725612622" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1715125968">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4066656153">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2369152078">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1340909264">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3641978889">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="498048654">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2243461328">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3456612178">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2550794576">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3675208636">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="951430993">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1469208558">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="329481808">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3495790256">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2237209532">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2026176068">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1078308491">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3320679030">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3744204768">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2463967612">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="607847492">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3102408260">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="578871947">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4211690102">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="893028320">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1511461347">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4073084134">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="406564224">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1897964584">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3368990124">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3257949412">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3774245088">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2604621788">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="627665604">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2341937325">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3886654310">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3447236480">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3445222202">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="140040448">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2623853212">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4138643036">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3809955012">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3180783428">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="296716001">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3430478702">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2674691152">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1504371292">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1429601476">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2456618820">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="946579339">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2023213174">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2040889312">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3636598285">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="765090598">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3604294912">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
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
    <item dataType="Struct" type="Duality.GameObject" id="335847487">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3464831421">
        <_items dataType="Array" type="Duality.Component[]" id="2791405606">
          <item dataType="Struct" type="Duality.Components.Transform" id="393124705">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">335847487</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4165744271">
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
            <gameobj dataType="ObjectRef">335847487</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="552853839">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1761779246">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4000217936">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4165744271</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3389821445">
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
            <gameobj dataType="ObjectRef">335847487</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3318045222">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">335847487</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2981018296" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2930460375">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4129232320">
            <item dataType="ObjectRef">393124705</item>
            <item dataType="ObjectRef">4165744271</item>
            <item dataType="ObjectRef">3318045222</item>
            <item dataType="ObjectRef">3389821445</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">393124705</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1804890357">Oh+qYzaZMEKGeB5UxtGsrQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2294859174">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="863681968">
        <_items dataType="Array" type="Duality.Component[]" id="485252540">
          <item dataType="Struct" type="Duality.Components.Transform" id="2352136392">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2294859174</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1829788662">
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
            <gameobj dataType="ObjectRef">2294859174</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="864880494">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="746493008">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="959017404">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1829788662</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1053865836">
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
            <gameobj dataType="ObjectRef">2294859174</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="982089613">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2294859174</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1361698158" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1598889858">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3381242506">
            <item dataType="ObjectRef">2352136392</item>
            <item dataType="ObjectRef">1829788662</item>
            <item dataType="ObjectRef">982089613</item>
            <item dataType="ObjectRef">1053865836</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2352136392</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2141169394">VUXyclrjnEStX6gH4bzXhA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3690021308">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1230901202">
        <_items dataType="Array" type="Duality.Component[]" id="1590700880">
          <item dataType="Struct" type="Duality.Components.Transform" id="3747298526">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3690021308</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3224950796">
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
            <gameobj dataType="ObjectRef">3690021308</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="897303220">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1457078692">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2167909572">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3224950796</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2449027970">
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
            <gameobj dataType="ObjectRef">3690021308</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2377251747">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3690021308</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2951746762" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2495972616">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4096991198">
            <item dataType="ObjectRef">3747298526</item>
            <item dataType="ObjectRef">3224950796</item>
            <item dataType="ObjectRef">2377251747</item>
            <item dataType="ObjectRef">2449027970</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3747298526</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="972407540">HOkCwTKgvEWg3eKJ8MJOmQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2782822864">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1200958070">
        <_items dataType="Array" type="Duality.Component[]" id="2300676064">
          <item dataType="Struct" type="Duality.Components.Transform" id="2840100082">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2782822864</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2317752352">
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
            <gameobj dataType="ObjectRef">2782822864</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1039809264">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1313966908">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1677907780">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2317752352</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1541829526">
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
            <gameobj dataType="ObjectRef">2782822864</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1470053303">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2782822864</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="476031258" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3618262340">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4131435158">
            <item dataType="ObjectRef">2840100082</item>
            <item dataType="ObjectRef">2317752352</item>
            <item dataType="ObjectRef">1470053303</item>
            <item dataType="ObjectRef">1541829526</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2840100082</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3218474240">oYzP2JhAg0eNLtIV/gYkYA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2846992342">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4291267712">
        <_items dataType="Array" type="Duality.Component[]" id="506237340">
          <item dataType="Struct" type="Duality.Components.Transform" id="2904269560">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2846992342</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2381921830">
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
            <gameobj dataType="ObjectRef">2846992342</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1288493598">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="484277904">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1025019196">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2381921830</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1605999004">
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
            <gameobj dataType="ObjectRef">2846992342</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1534222781">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2846992342</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="620950734" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2166469714">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="676511434">
            <item dataType="ObjectRef">2904269560</item>
            <item dataType="ObjectRef">2381921830</item>
            <item dataType="ObjectRef">1534222781</item>
            <item dataType="ObjectRef">1605999004</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2904269560</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1426137826">crVlJM0SpkyBW0sVg4oK7g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="806977689">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2281756603">
        <_items dataType="Array" type="Duality.Component[]" id="96568534">
          <item dataType="Struct" type="Duality.Components.Transform" id="864254907">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">806977689</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="341907177">
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
            <gameobj dataType="ObjectRef">806977689</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="243803273">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2609913742">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2913952976">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">341907177</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3860951647">
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
            <gameobj dataType="ObjectRef">806977689</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3789175424">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">806977689</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="610740264" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3950714833">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3911143328">
            <item dataType="ObjectRef">864254907</item>
            <item dataType="ObjectRef">341907177</item>
            <item dataType="ObjectRef">3789175424</item>
            <item dataType="ObjectRef">3860951647</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">864254907</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1574331203">dvKlcvT3UUus1xu7BPAFkQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="709155365">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="159937111">
        <_items dataType="Array" type="Duality.Component[]" id="2688239118">
          <item dataType="Struct" type="Duality.Components.Transform" id="766432583">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">709155365</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="244084853">
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
            <gameobj dataType="ObjectRef">709155365</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3866711221">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4178935542">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2275475680">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">244084853</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3763129323">
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
            <gameobj dataType="ObjectRef">709155365</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3691353100">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">709155365</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1589399488" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3033824989">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2208020600">
            <item dataType="ObjectRef">766432583</item>
            <item dataType="ObjectRef">244084853</item>
            <item dataType="ObjectRef">3691353100</item>
            <item dataType="ObjectRef">3763129323</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">766432583</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1491891831">t5N5mezBzkeXooiEOhkfEA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1348125622">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="479633056">
        <_items dataType="Array" type="Duality.Component[]" id="2326109404">
          <item dataType="Struct" type="Duality.Components.Transform" id="1405402840">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1348125622</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="883055110">
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
            <gameobj dataType="ObjectRef">1348125622</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3778156094">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="240976400">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2548560700">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">883055110</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="107132284">
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
            <gameobj dataType="ObjectRef">1348125622</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="35356061">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1348125622</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="364577934" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3961166450">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="461879370">
            <item dataType="ObjectRef">1405402840</item>
            <item dataType="ObjectRef">883055110</item>
            <item dataType="ObjectRef">35356061</item>
            <item dataType="ObjectRef">107132284</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1405402840</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3656367426">W1x6ffPL1EWteeQZ32fH7Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1431566363">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="374479465">
        <_items dataType="Array" type="Duality.Component[]" id="4178817294">
          <item dataType="Struct" type="Duality.Components.Transform" id="1488843581">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1431566363</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="966495851">
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
            <gameobj dataType="ObjectRef">1431566363</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1745883627">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2190649974">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3005384672">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">966495851</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="190573025">
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
            <gameobj dataType="ObjectRef">1431566363</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="118796802">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1431566363</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3552609984" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1963394275">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2987603704">
            <item dataType="ObjectRef">1488843581</item>
            <item dataType="ObjectRef">966495851</item>
            <item dataType="ObjectRef">118796802</item>
            <item dataType="ObjectRef">190573025</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1488843581</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4035001929">kenpEe1t80iS8Vr6OfTawA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="345145737">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3351155403">
        <_items dataType="Array" type="Duality.Component[]" id="2281982966">
          <item dataType="Struct" type="Duality.Components.Transform" id="402422955">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">345145737</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4175042521">
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
            <gameobj dataType="ObjectRef">345145737</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3480304505">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3805280078">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3259282128">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4175042521</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3399119695">
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
            <gameobj dataType="ObjectRef">345145737</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3327343472">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">345145737</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2970892360" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3446609121">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3777124896">
            <item dataType="ObjectRef">402422955</item>
            <item dataType="ObjectRef">4175042521</item>
            <item dataType="ObjectRef">3327343472</item>
            <item dataType="ObjectRef">3399119695</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">402422955</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3336997491">izA7Pg8JW0i+wLb9V2fzqA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1986843897">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="825681115">
        <_items dataType="Array" type="Duality.Component[]" id="3016135318">
          <item dataType="Struct" type="Duality.Components.Transform" id="2044121115">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1986843897</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1521773385">
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
            <gameobj dataType="ObjectRef">1986843897</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1683105577">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2336579598">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="147553232">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1521773385</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="745850559">
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
            <gameobj dataType="ObjectRef">1986843897</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="674074336">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1986843897</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4264162664" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4068174385">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="573540960">
            <item dataType="ObjectRef">2044121115</item>
            <item dataType="ObjectRef">1521773385</item>
            <item dataType="ObjectRef">674074336</item>
            <item dataType="ObjectRef">745850559</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2044121115</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1745037795">ffvTZ5HObkufnJHJn5LXRg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1484814830">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2129591480">
        <_items dataType="Array" type="Duality.Component[]" id="2134474860">
          <item dataType="Struct" type="Duality.Components.Transform" id="1542092048">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1484814830</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1019744318">
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
            <gameobj dataType="ObjectRef">1484814830</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2863778950">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1435001728">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="4010955164">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1019744318</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="243821492">
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
            <gameobj dataType="ObjectRef">1484814830</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="172045269">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1484814830</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3959823582" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3628987130">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4109311290">
            <item dataType="ObjectRef">1542092048</item>
            <item dataType="ObjectRef">1019744318</item>
            <item dataType="ObjectRef">172045269</item>
            <item dataType="ObjectRef">243821492</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1542092048</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="994249850">IDxnPqDJ1EGqLdX/IKF/aA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="379275883">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2526722073">
        <_items dataType="Array" type="Duality.Component[]" id="1555019086">
          <item dataType="Struct" type="Duality.Components.Transform" id="436553101">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">379275883</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4209172667">
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
            <gameobj dataType="ObjectRef">379275883</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1904625051">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3370451862">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2051385376">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4209172667</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3433249841">
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
            <gameobj dataType="ObjectRef">379275883</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3361473618">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">379275883</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1806177152" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="831550259">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2216587960">
            <item dataType="ObjectRef">436553101</item>
            <item dataType="ObjectRef">4209172667</item>
            <item dataType="ObjectRef">3361473618</item>
            <item dataType="ObjectRef">3433249841</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">436553101</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2524422489">DKb+NanVRU6P5j8zJX/ZCQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4125525570">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="125405644">
        <_items dataType="Array" type="Duality.Component[]" id="4118813860">
          <item dataType="Struct" type="Duality.Components.Transform" id="4182802788">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4125525570</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3660455058">
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
            <gameobj dataType="ObjectRef">4125525570</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="697203906">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2542253584">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3698426684">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3660455058</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2884532232">
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
            <gameobj dataType="ObjectRef">4125525570</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2812756009">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4125525570</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="329747190" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3968639558">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3392286138">
            <item dataType="ObjectRef">4182802788</item>
            <item dataType="ObjectRef">3660455058</item>
            <item dataType="ObjectRef">2812756009</item>
            <item dataType="ObjectRef">2884532232</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4182802788</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3064128070">zKu6GvffkUS5ZX3qj4bQFg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1996725653">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3742879719">
        <_items dataType="Array" type="Duality.Component[]" id="2702247246">
          <item dataType="Struct" type="Duality.Components.Transform" id="2054002871">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1996725653</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1531655141">
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
            <gameobj dataType="ObjectRef">1996725653</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1580303941">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2347811030">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1249642784">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1531655141</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="755732315">
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
            <gameobj dataType="ObjectRef">1996725653</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="683956092">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1996725653</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1803912064" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3535353037">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1435046584">
            <item dataType="ObjectRef">2054002871</item>
            <item dataType="ObjectRef">1531655141</item>
            <item dataType="ObjectRef">683956092</item>
            <item dataType="ObjectRef">755732315</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2054002871</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="914560679">mhIzQJoXekKHPUK1/ybrvg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2154248409">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1661211515">
        <_items dataType="Array" type="Duality.Component[]" id="1678839638">
          <item dataType="Struct" type="Duality.Components.Transform" id="2211525627">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2154248409</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1689177897">
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
            <gameobj dataType="ObjectRef">2154248409</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2144942665">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="293836174">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2122336464">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1689177897</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="913255071">
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
            <gameobj dataType="ObjectRef">2154248409</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="841478848">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2154248409</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1131695272" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2186634385">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1067879072">
            <item dataType="ObjectRef">2211525627</item>
            <item dataType="ObjectRef">1689177897</item>
            <item dataType="ObjectRef">841478848</item>
            <item dataType="ObjectRef">913255071</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2211525627</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="294373635">W3AyTP7jgUmKpZ3votWA7w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3375238586">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3372391972">
        <_items dataType="Array" type="Duality.Component[]" id="3449935556">
          <item dataType="Struct" type="Duality.Components.Transform" id="3432515804">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3375238586</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2910168074">
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
            <gameobj dataType="ObjectRef">3375238586</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="750042474">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1562153504">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3990647772">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2910168074</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2134245248">
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
            <gameobj dataType="ObjectRef">3375238586</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2062469025">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3375238586</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4139939094" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3278579054">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2745337290">
            <item dataType="ObjectRef">3432515804</item>
            <item dataType="ObjectRef">2910168074</item>
            <item dataType="ObjectRef">2062469025</item>
            <item dataType="ObjectRef">2134245248</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3432515804</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2179111774">WbzDW2lShU+SbRJiLfjOLg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3287025571">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3227576209">
        <_items dataType="Array" type="Duality.Component[]" id="4168731118">
          <item dataType="Struct" type="Duality.Components.Transform" id="3344302789">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3287025571</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2349</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2349</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2821955059">
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
            <gameobj dataType="ObjectRef">3287025571</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2635734931">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="892836070">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3835614592">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2821955059</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2046032233">
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
            <gameobj dataType="ObjectRef">3287025571</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1974256010">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3287025571</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="433264288" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1721638971">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1778818600">
            <item dataType="ObjectRef">3344302789</item>
            <item dataType="ObjectRef">2821955059</item>
            <item dataType="ObjectRef">1974256010</item>
            <item dataType="ObjectRef">2046032233</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3344302789</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1762564017">MZQ+rmTPs0Ch/8icXix8/g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2913634517">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2213813671">
        <_items dataType="Array" type="Duality.Component[]" id="2394659790">
          <item dataType="Struct" type="Duality.Components.Transform" id="2970911735">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2913634517</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2448564005">
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
            <gameobj dataType="ObjectRef">2913634517</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="732564997">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="859794006">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1844557856">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2448564005</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1672641179">
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
            <gameobj dataType="ObjectRef">2913634517</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1600864956">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2913634517</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3745079296" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4094203277">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2314734520">
            <item dataType="ObjectRef">2970911735</item>
            <item dataType="ObjectRef">2448564005</item>
            <item dataType="ObjectRef">1600864956</item>
            <item dataType="ObjectRef">1672641179</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2970911735</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2694980711">vRYQvHM72EesmomNAZ2kWw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4135818602">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2904492276">
        <_items dataType="Array" type="Duality.Component[]" id="3940939940">
          <item dataType="Struct" type="Duality.Components.Transform" id="4193095820">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4135818602</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3670748090">
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
            <gameobj dataType="ObjectRef">4135818602</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2310504282">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="794223104">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1644481692">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3670748090</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2894825264">
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
            <gameobj dataType="ObjectRef">4135818602</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2823049041">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4135818602</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3229775606" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1744962270">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="578410250">
            <item dataType="ObjectRef">4193095820</item>
            <item dataType="ObjectRef">3670748090</item>
            <item dataType="ObjectRef">2823049041</item>
            <item dataType="ObjectRef">2894825264</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4193095820</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4187447598">Q8KX9fFQwkejY7nfxM2+Tg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3572883553">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2845311907">
        <_items dataType="Array" type="Duality.Component[]" id="3717759846">
          <item dataType="Struct" type="Duality.Components.Transform" id="3630160771">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3572883553</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3107813041">
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
            <gameobj dataType="ObjectRef">3572883553</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1723242609">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="712704686">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1939869008">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3107813041</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2331890215">
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
            <gameobj dataType="ObjectRef">3572883553</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2260113992">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3572883553</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3655191416" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2098012361">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1233616448">
            <item dataType="ObjectRef">3630160771</item>
            <item dataType="ObjectRef">3107813041</item>
            <item dataType="ObjectRef">2260113992</item>
            <item dataType="ObjectRef">2331890215</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3630160771</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3457211627">Kg/+v/x/6UCCcUg1AdRtAQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="318789808">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3908903958">
        <_items dataType="Array" type="Duality.Component[]" id="229311776">
          <item dataType="Struct" type="Duality.Components.Transform" id="376067026">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">318789808</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4148686592">
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
            <gameobj dataType="ObjectRef">318789808</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3355120016">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1551737148">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1049833284">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4148686592</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3372763766">
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
            <gameobj dataType="ObjectRef">318789808</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3300987543">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">318789808</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1960048602" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1276373220">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1318762006">
            <item dataType="ObjectRef">376067026</item>
            <item dataType="ObjectRef">4148686592</item>
            <item dataType="ObjectRef">3300987543</item>
            <item dataType="ObjectRef">3372763766</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">376067026</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1318381280">oQ2OSRgeTk+Fxs5e469j/A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2011976135">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="485481061">
        <_items dataType="Array" type="Duality.Component[]" id="3998139286">
          <item dataType="Struct" type="Duality.Components.Transform" id="2069253353">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2011976135</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1546905623">
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
            <gameobj dataType="ObjectRef">2011976135</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="674482039">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="624172942">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2629788880">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1546905623</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="770982797">
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
            <gameobj dataType="ObjectRef">2011976135</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="699206574">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2011976135</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1958162024" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3180034319">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2400964576">
            <item dataType="ObjectRef">2069253353</item>
            <item dataType="ObjectRef">1546905623</item>
            <item dataType="ObjectRef">699206574</item>
            <item dataType="ObjectRef">770982797</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2069253353</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3836402269">rzLhACbYYk2CTtPKF3AS+g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3716355558">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="25935216">
        <_items dataType="Array" type="Duality.Component[]" id="3339779388">
          <item dataType="Struct" type="Duality.Components.Transform" id="3773632776">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3716355558</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3251285046">
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
            <gameobj dataType="ObjectRef">3716355558</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3849030830">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4183384400">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="48143292">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3251285046</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2475362220">
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
            <gameobj dataType="ObjectRef">3716355558</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2403585997">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3716355558</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3232116462" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3196913346">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3111137802">
            <item dataType="ObjectRef">3773632776</item>
            <item dataType="ObjectRef">3251285046</item>
            <item dataType="ObjectRef">2403585997</item>
            <item dataType="ObjectRef">2475362220</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3773632776</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1887860658">vBR46JW/VU+5ExSedl7G6g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2113561990">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3488879696">
        <_items dataType="Array" type="Duality.Component[]" id="3599462844">
          <item dataType="Struct" type="Duality.Components.Transform" id="2170839208">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2113561990</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1648491478">
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
            <gameobj dataType="ObjectRef">2113561990</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3028217358">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1866084304">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2941930172">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1648491478</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="872568652">
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
            <gameobj dataType="ObjectRef">2113561990</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="800792429">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2113561990</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="747151726" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1501587746">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1603946250">
            <item dataType="ObjectRef">2170839208</item>
            <item dataType="ObjectRef">1648491478</item>
            <item dataType="ObjectRef">800792429</item>
            <item dataType="ObjectRef">872568652</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2170839208</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3228605138">kbQRvT+0sU6zReedzAQsaQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1974236513">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4212087459">
        <_items dataType="Array" type="Duality.Component[]" id="775495014">
          <item dataType="Struct" type="Duality.Components.Transform" id="2031513731">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1974236513</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1509166001">
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
            <gameobj dataType="ObjectRef">1974236513</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3661733233">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4201677998">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1614315856">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1509166001</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="733243175">
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
            <gameobj dataType="ObjectRef">1974236513</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="661466952">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1974236513</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="925927800" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3110713801">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1594952256">
            <item dataType="ObjectRef">2031513731</item>
            <item dataType="ObjectRef">1509166001</item>
            <item dataType="ObjectRef">661466952</item>
            <item dataType="ObjectRef">733243175</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2031513731</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="105576427">1pNuar60a0m9mGZi/TWsCw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3015775296">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2742834182">
        <_items dataType="Array" type="Duality.Component[]" id="3941975424">
          <item dataType="Struct" type="Duality.Components.Transform" id="3073052514">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3015775296</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2550704784">
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
            <gameobj dataType="ObjectRef">3015775296</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3870822592">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2221605148">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="640315332">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2550704784</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1774781958">
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
            <gameobj dataType="ObjectRef">3015775296</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1703005735">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3015775296</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1660942650" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1042528116">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1848719350">
            <item dataType="ObjectRef">3073052514</item>
            <item dataType="ObjectRef">2550704784</item>
            <item dataType="ObjectRef">1703005735</item>
            <item dataType="ObjectRef">1774781958</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3073052514</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3768838992">2218eGJlQUWiY/VJbyjfqg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3011843195">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1325942025">
        <_items dataType="Array" type="Duality.Component[]" id="3250948750">
          <item dataType="Struct" type="Duality.Components.Transform" id="3069120413">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3011843195</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2546772683">
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
            <gameobj dataType="ObjectRef">3011843195</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2056384011">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1243132022">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="297705440">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2546772683</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1770849857">
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
            <gameobj dataType="ObjectRef">3011843195</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1699073634">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3011843195</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2555115072" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3308394947">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2318624440">
            <item dataType="ObjectRef">3069120413</item>
            <item dataType="ObjectRef">2546772683</item>
            <item dataType="ObjectRef">1699073634</item>
            <item dataType="ObjectRef">1770849857</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3069120413</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4233644009">ZV1cfJThwE6a+vwxRjI74g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2407859958">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4279194720">
        <_items dataType="Array" type="Duality.Component[]" id="3498427100">
          <item dataType="Struct" type="Duality.Components.Transform" id="2465137176">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2407859958</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1942789446">
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
            <gameobj dataType="ObjectRef">2407859958</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1687237758">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1504985232">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2520433980">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">1942789446</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1166866620">
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
            <gameobj dataType="ObjectRef">2407859958</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1095090397">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2407859958</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="359925390" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3611003058">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="119598666">
            <item dataType="ObjectRef">2465137176</item>
            <item dataType="ObjectRef">1942789446</item>
            <item dataType="ObjectRef">1095090397</item>
            <item dataType="ObjectRef">1166866620</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2465137176</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1831759106">Jlqk3grEyE+WVS93ZOtCwQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3342349532">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3986710962">
        <_items dataType="Array" type="Duality.Component[]" id="4024966864">
          <item dataType="Struct" type="Duality.Components.Transform" id="3399626750">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3342349532</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2877279020">
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
            <gameobj dataType="ObjectRef">3342349532</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1209737684">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3070700772">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3945088964">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2877279020</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2101356194">
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
            <gameobj dataType="ObjectRef">3342349532</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2029579971">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3342349532</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3351415370" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="159824040">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="756790174">
            <item dataType="ObjectRef">3399626750</item>
            <item dataType="ObjectRef">2877279020</item>
            <item dataType="ObjectRef">2029579971</item>
            <item dataType="ObjectRef">2101356194</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3399626750</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2484387476">h3jLwEMj+UOg/dmkSGzC7A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3124199882">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2971311764">
        <_items dataType="Array" type="Duality.Component[]" id="1558997860">
          <item dataType="Struct" type="Duality.Components.Transform" id="3181477100">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3124199882</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2659129370">
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
            <gameobj dataType="ObjectRef">3124199882</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2946863866">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="149002624">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="306404764">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">2659129370</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="1883206544">
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
            <gameobj dataType="ObjectRef">3124199882</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="1811430321">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3124199882</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="857798710" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="376187710">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3983521290">
            <item dataType="ObjectRef">3181477100</item>
            <item dataType="ObjectRef">2659129370</item>
            <item dataType="ObjectRef">1811430321</item>
            <item dataType="ObjectRef">1883206544</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3181477100</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1499931214">IERq0hAGAkCwXj8Nl+TxmA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3913355472">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2844656502">
        <_items dataType="Array" type="Duality.Component[]" id="3672937440">
          <item dataType="Struct" type="Duality.Components.Transform" id="3970632690">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3913355472</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3448284960">
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
            <gameobj dataType="ObjectRef">3913355472</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3297469936">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2951779132">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1143580484">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3448284960</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2672362134">
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
            <gameobj dataType="ObjectRef">3913355472</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2600585911">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3913355472</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3871237402" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2728055364">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="322169494">
            <item dataType="ObjectRef">3970632690</item>
            <item dataType="ObjectRef">3448284960</item>
            <item dataType="ObjectRef">2600585911</item>
            <item dataType="ObjectRef">2672362134</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3970632690</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3379628032">R2pwHAImHUKFrcZOlqAv4Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="173032893">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2390835343">
        <_items dataType="Array" type="Duality.Component[]" id="2178165934">
          <item dataType="Struct" type="Duality.Components.Transform" id="230310111">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">173032893</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4002929677">
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
            <gameobj dataType="ObjectRef">173032893</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1419120493">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3863390438">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2652476800">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4002929677</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3227006851">
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
            <gameobj dataType="ObjectRef">173032893</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3155230628">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">173032893</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="820390112" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="25925413">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3582188904">
            <item dataType="ObjectRef">230310111</item>
            <item dataType="ObjectRef">4002929677</item>
            <item dataType="ObjectRef">3155230628</item>
            <item dataType="ObjectRef">3227006851</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">230310111</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3681993199">EbzwyrGs+U6C7Nwc0G4Q+g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1226483573">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3688292615">
        <_items dataType="Array" type="Duality.Component[]" id="4066657358">
          <item dataType="Struct" type="Duality.Components.Transform" id="1283760791">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1226483573</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="761413061">
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
            <gameobj dataType="ObjectRef">1226483573</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3487911909">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4109694614">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="3281066528">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">761413061</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="4280457531">
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
            <gameobj dataType="ObjectRef">1226483573</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="4208681308">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1226483573</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="769228416" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="799307437">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1102993272">
            <item dataType="ObjectRef">1283760791</item>
            <item dataType="ObjectRef">761413061</item>
            <item dataType="ObjectRef">4208681308</item>
            <item dataType="ObjectRef">4280457531</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1283760791</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3422609607">ZZdIqnTiO0OoHVNIAxBd1w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="356098869">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="563106887">
        <_items dataType="Array" type="Duality.Component[]" id="3020875982">
          <item dataType="Struct" type="Duality.Components.Transform" id="413376087">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">356098869</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2349</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2349</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4185995653">
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
            <gameobj dataType="ObjectRef">356098869</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3756916773">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1823399062">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2339430944">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">4185995653</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="3410072827">
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
            <gameobj dataType="ObjectRef">356098869</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="3338296604">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">356098869</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2044641536" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4111533037">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3766848760">
            <item dataType="ObjectRef">413376087</item>
            <item dataType="ObjectRef">4185995653</item>
            <item dataType="ObjectRef">3338296604</item>
            <item dataType="ObjectRef">3410072827</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">413376087</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3148566279">YI5cGNOYu0OgGVoXwHk+uQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3669131659">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1486462457">
        <_items dataType="Array" type="Duality.Component[]" id="4189333070">
          <item dataType="Struct" type="Duality.Components.Transform" id="3726408877">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3669131659</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2339</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-372.2339</X>
              <Y dataType="Float">-55.888</Y>
              <Z dataType="Float">-1</Z>
            </posAbs>
            <scale dataType="Float">0.130926162</scale>
            <scaleAbs dataType="Float">0.130926162</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3204061147">
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
            <gameobj dataType="ObjectRef">3669131659</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">8</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1313036795">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3581479510">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2015524896">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0</friction>
                  <parent dataType="ObjectRef">3204061147</parent>
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
          <item dataType="Struct" type="Duality.Components.Renderers.RigidBodyRenderer" id="2428138321">
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
            <gameobj dataType="ObjectRef">3669131659</gameobj>
            <offset dataType="Int">0</offset>
            <outlineMaterial dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
            </outlineMaterial>
            <outlineWidth dataType="Float">3</outlineWidth>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <wrapTexture dataType="Bool">true</wrapTexture>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PhysicsParticleFollower" id="2356362098">
            <_pathfinderProxy />
            <_rigidBody />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">0</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="ObjectRef">1603001729</_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_MovementSpeed_x003E_k__BackingField dataType="Float">1</_x003C_MovementSpeed_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3669131659</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2155644032" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="492741715">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="ObjectRef">3642399276</item>
            <item dataType="ObjectRef">2152382894</item>
            <item dataType="ObjectRef">2951473866</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2813362552">
            <item dataType="ObjectRef">3726408877</item>
            <item dataType="ObjectRef">3204061147</item>
            <item dataType="ObjectRef">2356362098</item>
            <item dataType="ObjectRef">2428138321</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3726408877</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2265276473">CpiQi8rwHEmrF5MQSUhrvg==</data>
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
