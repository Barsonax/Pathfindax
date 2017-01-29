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
    <item dataType="Struct" type="Duality.GameObject" id="168721759">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1647069853">
        <_items dataType="Array" type="Duality.Component[]" id="3947007718" length="4">
          <item dataType="Struct" type="Pathfindax.Duality.Components.PathfinderManager" id="1388201612">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">168721759</gameobj>
          </item>
          <item dataType="Struct" type="Pathfindax.Duality.Components.PathfinderComponent" id="4205042800">
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_MultithreadedPathfinder_x003E_k__BackingField />
            <_x003C_PathfinderId_x003E_k__BackingField />
            <_x003C_SourceNodeGrid_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">168721759</gameobj>
          </item>
          <item dataType="Struct" type="Pathfindax.Duality.Components.PathfindaxTestComponent" id="1143710228">
            <_pathfinderProxy />
            <_randomGenerator dataType="Struct" type="System.Random" id="3299689328">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="3452601660">0, 68186866, 1622073958, 1681501993, 448337996, 1951813015, 1462785090, 1636080126, 1750105099, 2131549456, 752298880, 813910332, 1441520117, 271445836, 894113727, 209933535, 941655940, 554416137, 1443417571, 1213555745, 909002538, 1318480174, 1582237259, 1101374738, 496238850, 27135610, 1487797168, 410915421, 1554369169, 406284098, 1063670090, 2074765735, 1321879527, 187711829, 1278402788, 490736354, 2097678630, 176930191, 1231755917, 685673406, 937503663, 530902605, 1397345572, 1453305115, 2120271310, 472805606, 768270480, 402190941, 1413369339, 722990544, 610838500, 740820848, 709069906, 1071179296, 2004199670, 921197927</SeedArray>
            </_randomGenerator>
            <_x003C_BoundRadius_x003E_k__BackingField dataType="Float">0</_x003C_BoundRadius_x003E_k__BackingField>
            <_x003C_Path_x003E_k__BackingField />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">168721759</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">7</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3604148472" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2643992055">
            <item dataType="Type" id="2997564046" value="Pathfindax.Duality.Components.PathfinderManager" />
            <item dataType="Type" id="3591055434" value="Pathfindax.Duality.Components.PathfinderComponent" />
            <item dataType="Type" id="251244990" value="Pathfindax.Duality.Components.PathfindaxTestComponent" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3693493824">
            <item dataType="ObjectRef">1388201612</item>
            <item dataType="ObjectRef">4205042800</item>
            <item dataType="ObjectRef">1143710228</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3874628693">Xz2+ZLArpUCJwEXSnTBdpQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PathfinderManager</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
