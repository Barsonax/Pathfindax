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
    <item dataType="Struct" type="Duality.GameObject" id="3538959177">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="770954507">
        <_items dataType="Array" type="Duality.Component[]" id="2842088054" length="4">
          <item dataType="Struct" type="Pathfindax.PathfindComponent" id="2752775267">
            <_randomGenerator dataType="Struct" type="System.Random" id="2635507667">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="14043750">0, 1229690251, 1026522182, 713380528, 127394164, 265273191, 1025934918, 1689761931, 1211841114, 519518273, 1819892561, 1929900544, 1082353586, 1735827109, 1150023424, 1507155456, 1292009556, 196199784, 1444405224, 357600545, 71449699, 2128290892, 1294601209, 2081944103, 1392383346, 1415610667, 1779440784, 402343738, 387530233, 1483063481, 1228099376, 1501933334, 3096828, 1766205910, 2064098675, 1486734926, 1515550226, 1544268118, 112545771, 425325010, 1854875730, 1784812302, 1670422776, 945164985, 210485219, 1496326726, 1518832256, 501721936, 1553108561, 565142482, 1392671716, 1772154900, 1775445311, 1604925051, 29477245, 2092204394</SeedArray>
            </_randomGenerator>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_Path_x003E_k__BackingField />
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3538959177</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2292951240" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1271866529">
            <item dataType="Type" id="2392852590" value="Pathfindax.PathfindComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3247521568">
            <item dataType="ObjectRef">2752775267</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1500707635">l3Kx3kE4W0mNVjTLJZhXhQ==</data>
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
