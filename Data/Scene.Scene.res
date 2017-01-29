<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2218316588">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="204330338">
        <_items dataType="Array" type="Duality.Component[]" id="2164229008" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="283664224">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">7.66666651</X>
              <Y dataType="Float">8.333334</Y>
              <Z dataType="Float">-10</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">7.66666651</X>
              <Y dataType="Float">8.333334</Y>
              <Z dataType="Float">-10</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="2755592395">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">15000</focusDist>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1953624159">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2964416622" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3109205584">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1530359150">
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
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="2871797959">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2218316588</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4074603914" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1268744184">
            <item dataType="Type" id="3377025388" value="Duality.Components.Transform" />
            <item dataType="Type" id="2197903414" value="Duality.Components.Camera" />
            <item dataType="Type" id="2020071480" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1433375198">
            <item dataType="ObjectRef">283664224</item>
            <item dataType="ObjectRef">2755592395</item>
            <item dataType="ObjectRef">2871797959</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">283664224</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3799211172">2JtnXV8x10iQbejOfGJEIw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2265960456">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2831735438">
        <_items dataType="Array" type="Duality.Component[]" id="4174137552" length="4">
          <item dataType="Struct" type="Pathfindax.Duality.PathfindComponent" id="877576394">
            <_randomGenerator dataType="Struct" type="System.Random" id="465177378">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="3846404880">0, 1869405880, 1512936423, 1597920509, 1312014859, 1454770595, 1325247294, 1496877751, 737621982, 1442232651, 1896189599, 1287574493, 873962640, 1524358055, 18376992, 670320825, 1457773286, 1621726768, 945446307, 454771295, 706971014, 1637638086, 1969417646, 2073783247, 1027910871, 290106307, 1560695879, 738832165, 397276441, 936432873, 214877852, 2043252596, 2064667088, 1653582846, 1014740764, 1050034825, 1794429442, 675431408, 782010305, 1176399096, 1579863754, 576816424, 1584313767, 1324614493, 2133123350, 155847062, 1042464564, 1541341334, 1546301705, 199579769, 1758836584, 544402641, 1104693351, 1409702729, 405735788, 1593754579</SeedArray>
            </_randomGenerator>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2265960456</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1383872586" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2131063372">
            <item dataType="Type" id="3095054244" value="Pathfindax.Duality.PathfindComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3975486966">
            <item dataType="ObjectRef">877576394</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1537338712">QZl3IHg2Bkm3LJFgE0yRTw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfindComponent</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
