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
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
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
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
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
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
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
        <_items dataType="Array" type="Duality.Component[]" id="813695631">
          <item dataType="ObjectRef">4009962089</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="828666520">
            <_sourceNodeGrid />
            <_x003C_MaxCalculatedClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxCalculatedClearance_x003E_k__BackingField>
            <_x003C_MovementPenalties_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" id="1744982957">
            <_x003C_Pathfinder_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3952684871</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" id="3864513774">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_NodeSize_x003E_k__BackingField dataType="Float">10</_x003C_NodeSize_x003E_k__BackingField>
            <_x003C_Visualize_x003E_k__BackingField dataType="Bool">true</_x003C_Visualize_x003E_k__BackingField>
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
            <item dataType="Type" id="2821304260" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
            <item dataType="Type" id="2365687190" value="Duality.Plugins.Pathfindax.Components.NodeNetworkVisualizer" />
            <item dataType="Type" id="1200435840" value="Duality.Plugins.Pathfindax.Components.AstarPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2498106902">
            <item dataType="ObjectRef">4009962089</item>
            <item dataType="ObjectRef">828666520</item>
            <item dataType="ObjectRef">3864513774</item>
            <item dataType="ObjectRef">1744982957</item>
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
        <_items dataType="Array" type="Duality.Component[]" id="3833294966" length="4">
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
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1385498873">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4211846889</gameobj>
            <offset dataType="Int">-10</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PathFollowerComponent" id="1829385283">
            <_counter dataType="Int">0</_counter>
            <_gridPathfinderProxy />
            <_path />
            <_pathIndex dataType="Int">0</_pathIndex>
            <_transform />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">3</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="1603001729">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">11000</farZ>
              <focusDist dataType="Float">620</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="56615252">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="198915356">
                  <_items dataType="Array" type="Duality.Component[]" id="3327940548" length="4">
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
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3071434262" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="1862209462">
                      <item dataType="ObjectRef">4173822160</item>
                      <item dataType="Type" id="94737760" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="1255513242">
                      <item dataType="ObjectRef">113892470</item>
                      <item dataType="ObjectRef">1603001729</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">113892470</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="1841707606">Bi0BjLD3vEewiNO87xYQAg==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="2153560252">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="149458500" length="8">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1409858116">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2652129942">
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
            <_x003C_TimeBetweenMovements_x003E_k__BackingField dataType="Int">5</_x003C_TimeBetweenMovements_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4211846889</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="289342152" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="325124929">
            <item dataType="ObjectRef">4173822160</item>
            <item dataType="Type" id="2152382894" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="Type" id="2951473866" value="Duality.Plugins.Pathfindax.Examples.Components.PathFollowerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2466648544">
            <item dataType="ObjectRef">4269124107</item>
            <item dataType="ObjectRef">1385498873</item>
            <item dataType="ObjectRef">1829385283</item>
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
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">56615252</item>
    <item dataType="ObjectRef">23932836</item>
    <item dataType="ObjectRef">4201163298</item>
    <item dataType="ObjectRef">962511479</item>
    <item dataType="ObjectRef">2545817614</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
