<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="1344709794">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1708167788">
        <_items dataType="Array" type="Duality.GameObject[]" id="3175031652">
          <item dataType="Struct" type="Duality.GameObject" id="3341661717">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2091996089">
              <_items dataType="Array" type="Duality.Component[]" id="3922770126" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1407009353">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3341661717</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="Struct" type="Duality.Components.Transform" id="3705024726">
                    <active dataType="Bool">true</active>
                    <angle dataType="Float">0</angle>
                    <angleAbs dataType="Float">0</angleAbs>
                    <angleVel dataType="Float">0</angleVel>
                    <angleVelAbs dataType="Float">0</angleVelAbs>
                    <deriveAngle dataType="Bool">true</deriveAngle>
                    <gameobj dataType="ObjectRef">1344709794</gameobj>
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
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="1048546438">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3341661717</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="2410352058" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="1082261504">H4sIAAAAAAAEAFNgYGAQYaAWCAST5RDqP4TaSzXTBx5AfJSO4r+5A+Ya6oNR/8GACTUpIoymDhjJ8XcAQh2EUIdINZpC7dQBI9l/JyDUSQh1CkIFM4KpEEaCPKza6Q3w+U8BQilCKCUIRbz/sGqnN8Dmv7tQOQ0IpQmhtEg1mkLt1AHY/HffA0zd8wRT57wgFETwHL0E31HqMwjA5r//ASi8oIERpNRnEAAxWhlCWUOpCAgVCaGiBkSwmlKfjYJRMApGwSgYngAA146c4YgRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="2039769869">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">3341661717</gameobj>
                  <offset dataType="Float">-0</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="Flat" value="0" />
                  <tileDepthOffset dataType="Int">0</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1111879936" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3465651219">
                  <item dataType="Type" id="3647081190" value="Duality.Components.Transform" />
                  <item dataType="Type" id="2741047610" value="Duality.Plugins.Tilemaps.Tilemap" />
                  <item dataType="Type" id="973924454" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3973242104">
                  <item dataType="ObjectRef">1407009353</item>
                  <item dataType="ObjectRef">1048546438</item>
                  <item dataType="ObjectRef">2039769869</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1407009353</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3940927737">6vKUTbn6IkSW5HCpPPtf3Q==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">BaseLayer</name>
            <parent dataType="ObjectRef">1344709794</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1713216229">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2882832713">
              <_items dataType="Array" type="Duality.Component[]" id="563487630" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="4073531161">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1713216229</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">3705024726</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3715068246">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1713216229</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="623887338" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="4288918816">H4sIAAAAAAAEAO3PUQkAIBBEwQ1hAKNcF/t3UPwzwYHMwmO+dyYZp5W7l/oH/wAAAAAAQDcbKeejZYgRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="411324381">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">1713216229</gameobj>
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
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1079661376" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3755684611">
                  <item dataType="ObjectRef">3647081190</item>
                  <item dataType="ObjectRef">2741047610</item>
                  <item dataType="ObjectRef">973924454</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="107115448">
                  <item dataType="ObjectRef">4073531161</item>
                  <item dataType="ObjectRef">3715068246</item>
                  <item dataType="ObjectRef">411324381</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">4073531161</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2129222697">CdGp6LTQMku8ZF4mcJe53g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">UpperLayer</name>
            <parent dataType="ObjectRef">1344709794</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2870188378">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2306008634">
              <_items dataType="Array" type="Duality.Component[]" id="1393739008" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="935536014">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2870188378</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">3705024726</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="577073099">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2870188378</gameobj>
                  <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1195299583" custom="true">
                    <body>
                      <version dataType="Int">3</version>
                      <data dataType="Array" type="System.Byte[]" id="541296942">H4sIAAAAAAAEAO2Wb2oCMRDFs9XeoAfwHFaLVOslrLDgCsJa8F792C/qqeo/sFVB8eXLwJB9u8muFiroj4Q3mTeYMNMwxjxdviNz/Uh0SsBYQxmJJDzri2nlN7AC1n6ueXjWN6GVe+AH+A1ifhrkFBdmtNJE+AVSv7QtoC3wAgR9aoTPObAAlnkzqOE94E2gn/doAp7/wwbYArsSDHrCs74DcAROVbnm4VlfDa+xDjxG1ZonENPKT7FqopTnKHOlhlcGvj98idUrzHejzJUaXj7sxST6wwB4B4YVbxKluJAKxJrENqIEGAul3FSVIxFAKBOHl6Kw9U3ESsWHUE7FZurYJI5OtYCiFalw3VaZfZbXrg1Qr6KaiHg5NxqJLYr2fr5l5R6Jg44jRXt/QivlSPyQ3X2DjiN32Pvv0NI//jbOmsmYbogRAAA=</data>
                    </body>
                  </tileData>
                  <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                    <contentPath dataType="String">Data\TilemapPathfinderExample\magecity.Tileset.res</contentPath>
                  </tileset>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1568296530">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <externalTilemap />
                  <gameobj dataType="ObjectRef">2870188378</gameobj>
                  <offset dataType="Float">-0.02</offset>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                  <tileDepthOffset dataType="Int">10</tileDepthOffset>
                  <tileDepthScale dataType="Float">0.01</tileDepthScale>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1393175226" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="4006988160">
                  <item dataType="ObjectRef">3647081190</item>
                  <item dataType="ObjectRef">2741047610</item>
                  <item dataType="ObjectRef">973924454</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1893617870">
                  <item dataType="ObjectRef">935536014</item>
                  <item dataType="ObjectRef">577073099</item>
                  <item dataType="ObjectRef">1568296530</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">935536014</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1966573340">zt8eZg2rQkaha2b2EZ/U1g==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">TopLayer</name>
            <parent dataType="ObjectRef">1344709794</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2152065130">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1735134090">
              <_items dataType="Array" type="Duality.Component[]" id="653045728" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="217412766">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2152065130</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform dataType="ObjectRef">3705024726</parentTransform>
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="919874358">
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
                  <gameobj dataType="ObjectRef">2152065130</gameobj>
                  <ignoreGravity dataType="Bool">false</ignoreGravity>
                  <joints />
                  <linearDamp dataType="Float">0.3</linearDamp>
                  <linearVel dataType="Struct" type="Duality.Vector2" />
                  <revolutions dataType="Float">0</revolutions>
                  <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2933577814">
                    <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3278345248" length="32" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">2676</_version>
                  </shapes>
                </item>
                <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollider" id="266359049">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2152065130</gameobj>
                  <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                  <roundedCorners dataType="Bool">true</roundedCorners>
                  <shapeFriction dataType="Float">0.300000161</shapeFriction>
                  <shapeRestitution dataType="Float">0.300000161</shapeRestitution>
                  <solidOuterEdges dataType="Bool">true</solidOuterEdges>
                  <source dataType="Array" type="Duality.Plugins.Tilemaps.TilemapCollisionSource[]" id="781830189">
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">1048546438</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">3715068246</SourceTilemap>
                    </item>
                    <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapCollisionSource">
                      <Layers dataType="Enum" type="Duality.Plugins.Tilemaps.TileCollisionLayer" name="Layer0" value="1" />
                      <SourceTilemap dataType="ObjectRef">577073099</SourceTilemap>
                    </item>
                  </source>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
              <_version dataType="Int">3</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4215181594" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3521105520">
                  <item dataType="ObjectRef">3647081190</item>
                  <item dataType="Type" id="2530287932" value="Duality.Components.Physics.RigidBody" />
                  <item dataType="Type" id="4172661654" value="Duality.Plugins.Tilemaps.TilemapCollider" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2377671406">
                  <item dataType="ObjectRef">217412766</item>
                  <item dataType="ObjectRef">919874358</item>
                  <item dataType="ObjectRef">266359049</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">217412766</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3205825996">ya2Ms8m3OEWDOISXOYkFmw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">WorldGeometry</name>
            <parent dataType="ObjectRef">1344709794</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2552991798">
        <_items dataType="Array" type="Duality.Component[]" id="1047420582" length="4">
          <item dataType="ObjectRef">3705024726</item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" id="1568877053">
            <_counter dataType="Long">0</_counter>
            <_nodeGrid />
            <_nodeGridVisualizer />
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MaxCalculatedClearance_x003E_k__BackingField dataType="Int">5</_x003C_MaxCalculatedClearance_x003E_k__BackingField>
            <_x003C_MovementPenalties_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1344709794</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" id="2992067624">
            <_counter dataType="Int">0</_counter>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_NodeGridVisualizer_x003E_k__BackingField />
            <_x003C_NodeNetwork_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_ShowNodeGrid_x003E_k__BackingField dataType="Bool">true</_x003C_ShowNodeGrid_x003E_k__BackingField>
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1344709794</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="782502712" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3151931512">
            <item dataType="ObjectRef">3647081190</item>
            <item dataType="Type" id="1057994092" value="Duality.Plugins.Pathfindax.Tilemaps.Components.TilemapNodeGridGenerator" />
            <item dataType="Type" id="1024722998" value="Duality.Plugins.Pathfindax.Components.AStarGridPathfinderComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1127802334">
            <item dataType="ObjectRef">3705024726</item>
            <item dataType="ObjectRef">1568877053</item>
            <item dataType="ObjectRef">2992067624</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3705024726</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="82376996">OOoLnC0cL06wmNAtayqttQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Map</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3441120025">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3163854907">
        <_items dataType="Array" type="Duality.Component[]" id="4210601686" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1506467661">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3441120025</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="788319297">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3441120025</gameobj>
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
          <item dataType="Struct" type="Duality.Plugins.Pathfindax.Examples.Components.PathFollowerComponent" id="3684766035">
            <_path />
            <_pathfinderProxy />
            <_pathIndex dataType="Int">0</_pathIndex>
            <_transform />
            <_x003C_AgentSize_x003E_k__BackingField dataType="Byte">3</_x003C_AgentSize_x003E_k__BackingField>
            <_x003C_Camera_x003E_k__BackingField dataType="Struct" type="Duality.Components.Camera" id="3367475287">
              <active dataType="Bool">true</active>
              <farZ dataType="Float">11000</farZ>
              <focusDist dataType="Float">620</focusDist>
              <gameobj dataType="Struct" type="Duality.GameObject" id="2830199480">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3000754170">
                  <_items dataType="Array" type="Duality.Component[]" id="3910344064" length="4">
                    <item dataType="Struct" type="Duality.Components.Transform" id="895547116">
                      <active dataType="Bool">true</active>
                      <angle dataType="Float">0</angle>
                      <angleAbs dataType="Float">0</angleAbs>
                      <angleVel dataType="Float">0</angleVel>
                      <angleVelAbs dataType="Float">0</angleVelAbs>
                      <deriveAngle dataType="Bool">true</deriveAngle>
                      <gameobj dataType="ObjectRef">2830199480</gameobj>
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
                    <item dataType="ObjectRef">3367475287</item>
                  </_items>
                  <_size dataType="Int">2</_size>
                  <_version dataType="Int">2</_version>
                </compList>
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2882777402" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="2238236224">
                      <item dataType="ObjectRef">3647081190</item>
                      <item dataType="Type" id="3062979356" value="Duality.Components.Camera" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="1895756878">
                      <item dataType="ObjectRef">895547116</item>
                      <item dataType="ObjectRef">3367475287</item>
                    </values>
                  </body>
                </compMap>
                <compTransform dataType="ObjectRef">895547116</compTransform>
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="2897777884">Bi0BjLD3vEewiNO87xYQAg==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">Camera</name>
                <parent />
                <prefabLink />
              </gameobj>
              <nearZ dataType="Float">0</nearZ>
              <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="973452298">
                <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2913212128" length="8">
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="784111580">
                    <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                    <clearDepth dataType="Float">1</clearDepth>
                    <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                    <input />
                    <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                    <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                    <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                  </item>
                  <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3761424662">
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
                <_version dataType="Int">1314</_version>
              </passes>
              <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
              <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
            </_x003C_Camera_x003E_k__BackingField>
            <_x003C_CollisionCategory_x003E_k__BackingField dataType="Enum" type="Pathfindax.Nodes.PathfindaxCollisionCategory" name="Cat1" value="1" />
            <_x003C_TimeBetweenMovements_x003E_k__BackingField dataType="Int">5</_x003C_TimeBetweenMovements_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <counter dataType="Int">0</counter>
            <gameobj dataType="ObjectRef">3441120025</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3704741416" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3771889489">
            <item dataType="ObjectRef">3647081190</item>
            <item dataType="Type" id="1261963246" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="Type" id="3256367050" value="Duality.Plugins.Pathfindax.Examples.Components.PathFollowerComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2410375328">
            <item dataType="ObjectRef">1506467661</item>
            <item dataType="ObjectRef">788319297</item>
            <item dataType="ObjectRef">3684766035</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1506467661</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3853148099">4h3oEfM9Jk6GfOHS5bbk3Q==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIcon</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">2830199480</item>
    <item dataType="ObjectRef">3341661717</item>
    <item dataType="ObjectRef">1713216229</item>
    <item dataType="ObjectRef">2870188378</item>
    <item dataType="ObjectRef">2152065130</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
