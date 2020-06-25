<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ef06faca-14f8-4930-a241-fe15920b78b1(UpSet)">
  <persistence version="9" />
  <languages>
    <use id="e6c108c3-0009-4034-b684-c506814ba197" name="org.campagnelab.metar.plots" version="0" />
    <devkit ref="8a3636fa-c6ec-4cb0-bc2a-b7143f2a4937(org.campagnelab.metaR)" />
  </languages>
  <imports>
    <import index="b35y" ref="r:619f3a58-4e3a-4b3c-9a86-33acb851680e(Solution.Figure3)" />
    <import index="jugs" ref="r:625b65e5-b4a4-428e-a70f-ad13f56d2584(org.campagnelab.metar.plots.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
    </language>
    <language id="95951e17-c0d6-47b9-b1b5-42a4ca186fc6" name="org.campagnelab.instantrefresh">
      <concept id="1254484692210402710" name="org.campagnelab.instantrefresh.structure.IAtomic" flags="ng" index="16dhqS">
        <property id="221363389440938160" name="ID" index="1MXi1$" />
      </concept>
    </language>
    <language id="e6c108c3-0009-4034-b684-c506814ba197" name="org.campagnelab.metar.plots">
      <concept id="1369498147940951177" name="org.campagnelab.metar.plots.structure.UpSet" flags="ng" index="1n$wJ6">
        <child id="369044998826678154" name="plot" index="2obsJM" />
        <child id="369044998826678156" name="sets" index="2obsJO" />
      </concept>
      <concept id="1369498147940986414" name="org.campagnelab.metar.plots.structure.IdsFromGeneSet" flags="ng" index="1n$C5x">
        <reference id="1369498147940986415" name="ids" index="1n$C5w" />
      </concept>
    </language>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="3929971219796704543" name="org.campagnelab.metar.tables.structure.OutputFile" flags="ng" index="2jXUOv">
        <property id="3929971219796704769" name="path" index="2jXUS1" />
      </concept>
      <concept id="2814838647967227455" name="org.campagnelab.metar.tables.structure.TSingleLineComment" flags="ng" index="nccVD">
        <child id="2814838647967227681" name="commentedStatement" index="nccZR" />
      </concept>
      <concept id="8962032619593737384" name="org.campagnelab.metar.tables.structure.Statement" flags="ng" index="S1EQ7">
        <property id="8962032619593737385" name="id" index="S1EQ6" />
      </concept>
      <concept id="8962032619593737380" name="org.campagnelab.metar.tables.structure.Analysis" flags="ng" index="S1EQb">
        <child id="8962032619593737383" name="statements" index="S1EQ8" />
      </concept>
      <concept id="8962032619593737377" name="org.campagnelab.metar.tables.structure.EmptyLine" flags="ng" index="S1EQe" />
      <concept id="8013388156563171421" name="org.campagnelab.metar.tables.structure.PDF" flags="ng" index="Ss6Tf" />
      <concept id="8013388156563115186" name="org.campagnelab.metar.tables.structure.Render" flags="ng" index="SsgEw">
        <property id="7501650211371753390" name="height" index="165MyL" />
        <property id="7501650211371751513" name="width" index="165MX6" />
        <reference id="8013388156563171415" name="plot" index="Ss6T5" />
        <child id="3929971219796733619" name="path" index="2jX3UN" />
        <child id="8013388156563171423" name="output" index="Ss6Td" />
      </concept>
      <concept id="8962032619582305406" name="org.campagnelab.metar.tables.structure.StatementList" flags="ng" index="ZXjPh">
        <child id="8962032619582305407" name="transformations" index="ZXjPg" />
      </concept>
      <concept id="3105090771424833148" name="org.campagnelab.metar.tables.structure.PlotRef" flags="ng" index="312p7A">
        <reference id="3105090771424833149" name="plot" index="312p7B" />
      </concept>
      <concept id="3105090771424556187" name="org.campagnelab.metar.tables.structure.Multiplot" flags="ng" index="313sG1">
        <property id="3105090771424561488" name="numColumns" index="313rra" />
        <property id="3105090771424561486" name="numRows" index="313rrk" />
        <property id="3105090771427134128" name="preview" index="31lnkE" />
        <child id="3105090771424832493" name="plots" index="312phR" />
        <child id="3105090771426088552" name="destination" index="319mBM" />
      </concept>
      <concept id="3105090771426712763" name="org.campagnelab.metar.tables.structure.PlotRefWithPreview" flags="ng" index="31becx" />
      <concept id="8459500803719374384" name="org.campagnelab.metar.tables.structure.Plot" flags="ng" index="1FHg$p">
        <property id="8962032619586498917" name="width" index="ZHjxa" />
        <property id="8962032619586499111" name="height" index="ZHjG8" />
        <property id="4166618652723451261" name="plotId" index="3ZMXzF" />
      </concept>
      <concept id="4166618652716705715" name="org.campagnelab.metar.tables.structure.Define" flags="ng" index="3WoeC_">
        <child id="4166618652716705717" name="object" index="3WoeCz" />
      </concept>
      <concept id="4166618652716485500" name="org.campagnelab.metar.tables.structure.ID" flags="ng" index="3Wv0rE">
        <property id="4166618652716485501" name="id" index="3Wv0rF" />
      </concept>
      <concept id="4166618652716485499" name="org.campagnelab.metar.tables.structure.SetOfIds" flags="ng" index="3Wv0rH">
        <child id="4166618652716496208" name="ids" index="3Wv3z6" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="S1EQb" id="4dx6qFG_msQ">
    <property role="TrG5h" value="UpSetDemo" />
    <node concept="ZXjPh" id="4dx6qFG_msR" role="S1EQ8">
      <property role="1MXi1$" value="LEGNYHNQRI" />
      <node concept="nccVD" id="1c1rOX4Jh7k" role="ZXjPg">
        <property role="S1EQ6" value="HVNJHXKIWL" />
        <property role="1MXi1$" value="YQSHNCASDO" />
        <node concept="3SKdUq" id="1c1rOX4Jh9u" role="nccZR">
          <property role="3SKdUp" value="with defined gene lists:" />
        </node>
      </node>
      <node concept="3WoeC_" id="1c1rOX4_brs" role="ZXjPg">
        <property role="S1EQ6" value="FBFXJRGRAE" />
        <property role="1MXi1$" value="CKXBAEFIVK" />
        <node concept="3Wv0rH" id="1c1rOX4_brw" role="3WoeCz">
          <property role="TrG5h" value="FirstSet" />
          <node concept="3Wv0rE" id="1c1rOX4_brz" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneA" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_br_" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneB" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_brC" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneC" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jks" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneD" />
          </node>
        </node>
      </node>
      <node concept="3WoeC_" id="1c1rOX4_brN" role="ZXjPg">
        <property role="S1EQ6" value="GIQFJKYIKU" />
        <property role="1MXi1$" value="HADQFCKRQH" />
        <node concept="3Wv0rH" id="1c1rOX4_brY" role="3WoeCz">
          <property role="TrG5h" value="SecondSet" />
          <node concept="3Wv0rE" id="1c1rOX4_bs1" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneA" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_bs3" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneB" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_bs6" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneD" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_bsa" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneE" />
          </node>
          <node concept="3Wv0rE" id="1c1rOX4_bsf" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneF" />
          </node>
          <node concept="3Wv0rE" id="6NmDFVRKXqD" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneG" />
          </node>
        </node>
      </node>
      <node concept="S1EQe" id="1c1rOX4HC5m" role="ZXjPg">
        <property role="S1EQ6" value="MJALHTCKLM" />
        <property role="1MXi1$" value="VOYYREUWTU" />
      </node>
      <node concept="3WoeC_" id="4dx6qFG_jmO" role="ZXjPg">
        <property role="S1EQ6" value="GIQFJKYIKU" />
        <property role="1MXi1$" value="UJKKATVWSX" />
        <node concept="3Wv0rH" id="4dx6qFG_jmP" role="3WoeCz">
          <property role="TrG5h" value="ThirdSet" />
          <node concept="3Wv0rE" id="4dx6qFG_jmQ" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneA" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jmR" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneB" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jmT" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneE" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jmU" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneF" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jmV" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneG" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jpZ" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneH" />
          </node>
          <node concept="3Wv0rE" id="4dx6qFG_jqu" role="3Wv3z6">
            <property role="3Wv0rF" value="GeneI" />
          </node>
        </node>
      </node>
      <node concept="S1EQe" id="4dx6qFG_jkL" role="ZXjPg">
        <property role="1MXi1$" value="NLILSVJEUD" />
      </node>
      <node concept="1n$wJ6" id="1c1rOX4_bsz" role="ZXjPg">
        <property role="S1EQ6" value="EVLIXFBUOC" />
        <property role="1MXi1$" value="QQLGAGXEWK" />
        <node concept="1n$C5x" id="1c1rOX4_dgJ" role="2obsJO">
          <ref role="1n$C5w" node="1c1rOX4_brw" resolve="FirstSet" />
        </node>
        <node concept="1n$C5x" id="1c1rOX4_dgP" role="2obsJO">
          <ref role="1n$C5w" node="1c1rOX4_brY" resolve="SecondSet" />
        </node>
        <node concept="1n$C5x" id="4dx6qFG_jri" role="2obsJO">
          <ref role="1n$C5w" node="4dx6qFG_jmP" resolve="ThirdSet" />
        </node>
        <node concept="1FHg$p" id="1c1rOX4_bsB" role="2obsJM">
          <property role="ZHjxa" value="300" />
          <property role="ZHjG8" value="300" />
          <property role="3ZMXzF" value="3" />
          <property role="TrG5h" value="intersection" />
        </node>
      </node>
      <node concept="313sG1" id="4dx6qFG_mfP" role="ZXjPg">
        <property role="1MXi1$" value="YCMCMHNRKC" />
        <property role="313rra" value="1" />
        <property role="313rrk" value="1" />
        <property role="31lnkE" value="true" />
        <node concept="1FHg$p" id="4dx6qFG_mfQ" role="319mBM">
          <property role="ZHjxa" value="200" />
          <property role="ZHjG8" value="200" />
          <property role="3ZMXzF" value="1" />
          <property role="TrG5h" value="upsetR" />
        </node>
        <node concept="31becx" id="4dx6qFG_miM" role="312phR">
          <property role="1MXi1$" value="AQDEYDAGKS" />
          <ref role="312p7B" node="1c1rOX4_bsB" resolve="intersection" />
        </node>
      </node>
      <node concept="SsgEw" id="1ftXDWYJOus" role="ZXjPg">
        <property role="1MXi1$" value="BLBGJLUDGB" />
        <property role="165MX6" value="4" />
        <property role="165MyL" value="4" />
        <ref role="Ss6T5" node="1c1rOX4_bsB" resolve="intersection" />
        <node concept="Ss6Tf" id="1ftXDWYJOw4" role="Ss6Td" />
        <node concept="2jXUOv" id="1ftXDWYJOuw" role="2jX3UN">
          <property role="2jXUS1" value="intersection.pdf" />
        </node>
      </node>
    </node>
  </node>
</model>

