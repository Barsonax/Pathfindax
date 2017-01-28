<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2682468596">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3918368074">
        <_items dataType="Array" type="Duality.Component[]" id="1895225184" length="4">
          <item dataType="Struct" type="Pathfindax.PathfindComponent" id="1896284686">
            <_randomGenerator dataType="Struct" type="System.Random" id="4081381710">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="2430161616">0, 1428246518, 199211498, 513568520, 1056391562, 351013685, 91209044, 1714952521, 1878557815, 974032774, 1976824635, 1440055934, 133364350, 1549227781, 764635200, 171119094, 2131234665, 1874193042, 1002441325, 437159924, 1620156730, 145538607, 2103575577, 305409610, 1713778518, 902344520, 1419354610, 284893643, 931700396, 1374816880, 940898977, 1001492222, 78439698, 1154579352, 991826087, 344264823, 1583199260, 802136656, 1962107833, 1649779763, 1010100694, 514090586, 183558086, 941950176, 429715985, 889759080, 1921067530, 1560551059, 194081770, 2031249544, 1544059604, 1902160695, 696405259, 2113532671, 448640435, 1057455980</SeedArray>
            </_randomGenerator>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2682468596</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="311593626" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="569157168">
            <item dataType="Type" id="3656615612" value="Pathfindax.PathfindComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2876763758">
            <item dataType="ObjectRef">1896284686</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4077815948">4nouFs0/t0KjZ7bzVCIloQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfindComponent</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2893321747">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3587227297">
        <_items dataType="Array" type="Duality.Component[]" id="1496695918" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="958669383">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2893321747</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">6.353591</X>
              <Y dataType="Float">6.574586</Y>
              <Z dataType="Float">-10</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">6.353591</X>
              <Y dataType="Float">6.574586</Y>
              <Z dataType="Float">-10</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3430597554">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">2893321747</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="3922595862">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="933180704" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="76457948">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="4254959894">
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
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3279440672" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3546052523">
            <item dataType="Type" id="503030" value="Duality.Components.Transform" />
            <item dataType="Type" id="4047711770" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1707375944">
            <item dataType="ObjectRef">958669383</item>
            <item dataType="ObjectRef">3430597554</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">958669383</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2322370977">E9hIEDxmxE6B2to6czVbxA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
