<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:341a93dc-4d5d-40ad-b338-00f76f18d990(DifferentialExpressionWithLimma)">
  <persistence version="9" />
  <languages>
    <devkit ref="8a3636fa-c6ec-4cb0-bc2a-b7143f2a4937(org.campagnelab.metaR)" />
  </languages>
  <imports>
    <import index="9nc5" ref="r:d1a256e6-591a-459f-809c-7fc9df45e4d5(org.campagnelab.mps.XChart.types.roots)" implicit="true" />
    <import index="wiqx" ref="r:6bfd7c1b-dea3-4f98-9ed3-bce7739b7a8d(org.campagnelab.metar.accessories.styles.colors)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="95951e17-c0d6-47b9-b1b5-42a4ca186fc6" name="org.campagnelab.instantrefresh">
      <concept id="1254484692210402710" name="org.campagnelab.instantrefresh.structure.IAtomic" flags="ng" index="16dhqS">
        <property id="221363389440938160" name="ID" index="1MXi1$" />
      </concept>
    </language>
    <language id="ecc862c9-5ab5-42ef-8703-2039019fb338" name="org.campagnelab.metar.models">
      <concept id="5124039371744206219" name="org.campagnelab.metar.models.structure.BinaryExpression" flags="ng" index="10Wucy">
        <child id="5124039371744206221" name="right" index="10Wuc$" />
        <child id="5124039371744206220" name="left" index="10Wuc_" />
      </concept>
      <concept id="5124039371744206222" name="org.campagnelab.metar.models.structure.GroupFormula" flags="ng" index="10WucB">
        <child id="5124039371744206223" name="groupExpression" index="10WucA" />
      </concept>
      <concept id="5124039371744206225" name="org.campagnelab.metar.models.structure.GroupUsageRef" flags="ng" index="10WucS">
        <reference id="5124039371744206226" name="groupUsage" index="10WucV" />
      </concept>
      <concept id="5124039371744206229" name="org.campagnelab.metar.models.structure.Plus" flags="ng" index="10WucW" />
      <concept id="5124039371744206228" name="org.campagnelab.metar.models.structure.NoIntercept" flags="ng" index="10WucX" />
      <concept id="5124039371743719809" name="org.campagnelab.metar.models.structure.ContrastsBinaryOperator" flags="ng" index="10Y$WC">
        <child id="5124039371743719811" name="right" index="10Y$WE" />
        <child id="5124039371743719810" name="left" index="10Y$WF" />
      </concept>
      <concept id="5124039371743719808" name="org.campagnelab.metar.models.structure.ContrastMinus" flags="ng" index="10Y$WD" />
      <concept id="5124039371743719813" name="org.campagnelab.metar.models.structure.GroupRef" flags="ng" index="10Y$WG">
        <reference id="5124039371743719814" name="group" index="10Y$WJ" />
      </concept>
      <concept id="5124039371746754735" name="org.campagnelab.metar.models.structure.IStatTest" flags="ng" index="1f2fS6">
        <child id="5124039371746755079" name="modelFormula" index="1f2fMI" />
        <child id="5124039371746755432" name="contrasts" index="1f2fR1" />
      </concept>
    </language>
    <language id="049ed9e7-0f0d-4814-a373-a4b21e15b59e" name="org.campagnelab.metar.limma">
      <concept id="8725455673819557579" name="org.campagnelab.metar.limma.structure.LimmaVoom" flags="ng" index="3cumlZ">
        <child id="8725455673819568087" name="countsTable" index="3cupLz" />
        <child id="8725455673819577719" name="destinationTable" index="3curr3" />
        <child id="1922071611496850295" name="normalizedTable" index="1Izna5" />
      </concept>
    </language>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="5703306641526703227" name="org.campagnelab.metar.tables.structure.SelectGroupUsage" flags="ng" index="2tndn">
        <reference id="5703306641526703277" name="usage" index="2tne1" />
      </concept>
      <concept id="5703306641526702642" name="org.campagnelab.metar.tables.structure.HeatmapAnnotations" flags="ng" index="2tnku">
        <property id="6583618001731900686" name="clusterRows" index="2Lhm2Y" />
        <reference id="4173876386489605878" name="idGroup" index="2wXwy3" />
        <child id="5703306641526703109" name="usages" index="2tncD" />
        <child id="6583618001716896682" name="scaling" index="2Mr_oq" />
      </concept>
      <concept id="4451133196879828915" name="org.campagnelab.metar.tables.structure.TableRef" flags="ng" index="afgQW">
        <reference id="4451133196879830023" name="table" index="afgo8" />
      </concept>
      <concept id="3929971219796704543" name="org.campagnelab.metar.tables.structure.OutputFile" flags="ng" index="2jXUOv">
        <property id="3929971219796704769" name="path" index="2jXUS1" />
      </concept>
      <concept id="2133144034279815880" name="org.campagnelab.metar.tables.structure.SelectMultipleGroups" flags="ng" index="2spSBU">
        <child id="2133144034279816044" name="groupSelections" index="2spSxu" />
      </concept>
      <concept id="8031339867720116703" name="org.campagnelab.metar.tables.structure.UsageTypeRef" flags="ng" index="2y_Ijh">
        <reference id="8031339867720116704" name="usage" index="2y_IjI" />
      </concept>
      <concept id="8016431400517087678" name="org.campagnelab.metar.tables.structure.UsageType" flags="ng" index="2_mUhs" />
      <concept id="6583618001716898910" name="org.campagnelab.metar.tables.structure.ScaleByRow" flags="ng" index="2Mr_BI" />
      <concept id="7783277237108572280" name="org.campagnelab.metar.tables.structure.FilterWithExpression" flags="ng" index="2Qf$4g">
        <child id="2826789978062873521" name="filter" index="QaakN" />
      </concept>
      <concept id="8962032619593737380" name="org.campagnelab.metar.tables.structure.Analysis" flags="ng" index="S1EQb">
        <property id="2742007948298959018" name="trycatch_enabled" index="2BDq$p" />
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
      <concept id="5052319772298911308" name="org.campagnelab.metar.tables.structure.ExpressionWrapper" flags="ng" index="31$ALs">
        <child id="5052319772298911309" name="expression" index="31$ALt" />
      </concept>
      <concept id="8081253674570416584" name="org.campagnelab.metar.tables.structure.ColumnValue" flags="ng" index="3$Gm2I">
        <reference id="8081253674570416585" name="column" index="3$Gm2J" />
      </concept>
      <concept id="8459500803719374384" name="org.campagnelab.metar.tables.structure.Plot" flags="ng" index="1FHg$p">
        <property id="8962032619586498917" name="width" index="ZHjxa" />
        <property id="8962032619586499111" name="height" index="ZHjG8" />
        <property id="4166618652723451261" name="plotId" index="3ZMXzF" />
      </concept>
      <concept id="8459500803719286639" name="org.campagnelab.metar.tables.structure.Heatmap" flags="ng" index="1FHY16">
        <child id="5703306641526697040" name="annotations" index="2thHW" />
        <child id="4451133196879916916" name="table" index="af7lV" />
        <child id="8459500803719374387" name="plot" index="1FHg$q" />
        <child id="8459500803719286733" name="dataSelection" index="1FHY3$" />
      </concept>
      <concept id="3402264987261651661" name="org.campagnelab.metar.tables.structure.ImportTable" flags="ng" index="3MjoWR">
        <reference id="3402264987261692715" name="table" index="3Mj2Vh" />
        <child id="3402264987261651716" name="future" index="3MjoVY" />
      </concept>
      <concept id="3402264987259919045" name="org.campagnelab.metar.tables.structure.FutureTable" flags="ng" index="3MlLWZ">
        <reference id="3402264987259919103" name="table" index="3MlLW5" />
        <child id="4166618652720259019" name="myOwnTable" index="3WeD9t" />
      </concept>
      <concept id="3402264987259164676" name="org.campagnelab.metar.tables.structure.JoinTables" flags="ng" index="3MoTRY">
        <child id="3402264987262235696" name="byKeySelection" index="3MHf7a" />
      </concept>
      <concept id="3402264987259164677" name="org.campagnelab.metar.tables.structure.TableTransformation" flags="ng" index="3MoTRZ">
        <child id="3402264987259853630" name="outputTable" index="3Mq1V4" />
        <child id="3402264987259798258" name="inputTables" index="3Mqss8" />
      </concept>
      <concept id="3402264987258987827" name="org.campagnelab.metar.tables.structure.Table" flags="ng" index="3Mpm39">
        <property id="578023650349875540" name="pathToResolve" index="26T8KA" />
      </concept>
      <concept id="3402264987259789239" name="org.campagnelab.metar.tables.structure.FutureTableRef" flags="ng" index="3MqhDd">
        <reference id="3402264987259798245" name="table" index="3Mqssv" />
      </concept>
      <concept id="3402264987265829888" name="org.campagnelab.metar.tables.structure.ColumnGroupContainer" flags="ng" index="3MzsBU">
        <child id="8031339867719794365" name="usages" index="2yEZeN" />
        <child id="3402264987265829889" name="groups" index="3MzsBV" />
      </concept>
      <concept id="3402264987265829895" name="org.campagnelab.metar.tables.structure.ColumnGroupReference" flags="ng" index="3MzsBX">
        <reference id="3402264987265829896" name="columnGroup" index="3MzsBM" />
      </concept>
      <concept id="3402264987265829883" name="org.campagnelab.metar.tables.structure.ColumnGroup" flags="ng" index="3MzsS1">
        <child id="8031339867720116700" name="usesRefs" index="2y_Iji" />
      </concept>
      <concept id="3402264987265829804" name="org.campagnelab.metar.tables.structure.ColumnAnnotation" flags="ng" index="3MzsTm">
        <child id="3402264987265831176" name="groups" index="3MztjM" />
      </concept>
      <concept id="3402264987266660978" name="org.campagnelab.metar.tables.structure.SelectByGroup" flags="ng" index="3MW7Y8">
        <reference id="3402264987266660979" name="byGroup" index="3MW7Y9" />
      </concept>
      <concept id="4166618652716277483" name="org.campagnelab.metar.tables.structure.SubSetTableRows" flags="ng" index="3WuldX">
        <child id="4451133196880140419" name="table" index="aecac" />
        <child id="4166618652718302640" name="destination" index="3W64wA" />
        <child id="4166618652716281037" name="rowFilter" index="3Wum5r" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart">
      <concept id="2202909375770430359" name="org.campagnelab.mps.XChart.structure.DataFile" flags="ng" index="31JGnK">
        <property id="2202909375770434162" name="path" index="31JHgl" />
        <child id="2202909375770434164" name="columns" index="31JHgj" />
      </concept>
      <concept id="2202909375770430354" name="org.campagnelab.mps.XChart.structure.DelimitedFile" flags="ng" index="31JGnP">
        <property id="2202909375770898234" name="delimitor" index="31Cu5t" />
      </concept>
      <concept id="2202909375770434159" name="org.campagnelab.mps.XChart.structure.Column" flags="ng" index="31JHg8">
        <reference id="3328299660867197501" name="type" index="1YeEjl" />
      </concept>
    </language>
    <language id="43f31864-fc67-43f5-873e-ab79cc279a2d" name="org.campagnelab.styles">
      <concept id="27429407128487350" name="org.campagnelab.styles.structure.ColorPaletteRef" flags="ng" index="24aBtg">
        <reference id="27429407128487353" name="palette" index="24aBtv" />
      </concept>
      <concept id="5397636476160524896" name="org.campagnelab.styles.structure.UseStyle" flags="ng" index="2YPgeA">
        <reference id="3501083140137599858" name="useStyle" index="L_9Jz" />
      </concept>
      <concept id="5397636476160560846" name="org.campagnelab.styles.structure.StyleContainer" flags="ng" index="2YPoW8">
        <child id="5397636476160567172" name="elements" index="2YPqp2" />
      </concept>
    </language>
  </registry>
  <node concept="3Mpm39" id="10uFxk4w7eP">
    <property role="31Cu5t" value="&#9;" />
    <property role="26T8KA" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="31JHgl" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="TrG5h" value="GSE59364_DC_all.csv" />
    <node concept="31JHg8" id="5_ScChB$0Pt" role="31JHgj">
      <property role="TrG5h" value="gene" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
      <node concept="3MzsTm" id="5_ScChB$0Pu" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Pv" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Pw" role="31JHgj">
      <property role="TrG5h" value="mRNA len" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChB$0Px" role="31JHgj">
      <property role="TrG5h" value="genomic span" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChB$0Py" role="31JHgj">
      <property role="TrG5h" value="DC_normal" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChB$0Pz" role="31JHgj">
      <property role="TrG5h" value="DC_treated" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChB$0P$" role="31JHgj">
      <property role="TrG5h" value="DC0904" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0P_" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PA" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PB" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PC" role="31JHgj">
      <property role="TrG5h" value="DC0907" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PD" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PE" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PF" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PG" role="31JHgj">
      <property role="TrG5h" value="DCLPS0910" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PH" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PI" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PJ" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PK" role="31JHgj">
      <property role="TrG5h" value="DCLPS0913" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PL" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PM" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PN" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PO" role="31JHgj">
      <property role="TrG5h" value="A_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PP" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PQ" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PR" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PS" role="31JHgj">
      <property role="TrG5h" value="A_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PT" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PU" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PV" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0PW" role="31JHgj">
      <property role="TrG5h" value="B_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0PX" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0PY" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0PZ" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Q0" role="31JHgj">
      <property role="TrG5h" value="B_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Q1" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Q2" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Q3" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Q4" role="31JHgj">
      <property role="TrG5h" value="C_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Q5" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Q6" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Q7" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Q8" role="31JHgj">
      <property role="TrG5h" value="C_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Q9" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Qa" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Qb" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Qc" role="31JHgj">
      <property role="TrG5h" value="C2DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Qd" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Qe" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Qf" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Qg" role="31JHgj">
      <property role="TrG5h" value="C2DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Qh" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Qi" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Qj" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Qk" role="31JHgj">
      <property role="TrG5h" value="C3DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Ql" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Qm" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Qn" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="5_ScChB$0Qo" role="31JHgj">
      <property role="TrG5h" value="C3DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="5_ScChB$0Qp" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChB$0Qq" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="5_ScChB$0Qr" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3MzsBU" id="4oDuG44Ze4O">
    <node concept="3MzsS1" id="4oDuG44Ze4P" role="3MzsBV">
      <property role="TrG5h" value="ID" />
    </node>
    <node concept="3MzsS1" id="4oDuG44Ze4X" role="3MzsBV">
      <property role="TrG5h" value="counts" />
    </node>
    <node concept="3MzsS1" id="4oDuG44Ze7R" role="3MzsBV">
      <property role="TrG5h" value="LPS=no" />
      <node concept="2y_Ijh" id="4oDuG44Zeld" role="2y_Iji">
        <ref role="2y_IjI" node="4oDuG44Zelb" resolve="LPS_treatment" />
      </node>
      <node concept="2y_Ijh" id="4oDuG44ZgH9" role="2y_Iji">
        <ref role="2y_IjI" node="4oDuG44ZgH3" resolve="heatmap" />
      </node>
    </node>
    <node concept="3MzsS1" id="4oDuG44Ze7V" role="3MzsBV">
      <property role="TrG5h" value="LPS=yes" />
      <node concept="2y_Ijh" id="4oDuG44ZgHO" role="2y_Iji">
        <ref role="2y_IjI" node="4oDuG44ZgH3" resolve="heatmap" />
      </node>
      <node concept="2y_Ijh" id="4oDuG44Zelf" role="2y_Iji">
        <ref role="2y_IjI" node="4oDuG44Zelb" resolve="LPS_treatment" />
      </node>
    </node>
    <node concept="2_mUhs" id="4oDuG44Zelb" role="2yEZeN">
      <property role="TrG5h" value="LPS_treatment" />
    </node>
    <node concept="2_mUhs" id="4oDuG44ZgH3" role="2yEZeN">
      <property role="TrG5h" value="heatmap" />
    </node>
  </node>
  <node concept="S1EQb" id="4oDuG44Zegm">
    <property role="2BDq$p" value="false" />
    <property role="TrG5h" value="Diffexp" />
    <node concept="ZXjPh" id="4oDuG44Zegn" role="S1EQ8">
      <property role="1MXi1$" value="BCRJSRNUYF" />
      <node concept="S1EQe" id="4oDuG44Zego" role="ZXjPg">
        <property role="1MXi1$" value="YAXPOFLFPT" />
      </node>
      <node concept="3MjoWR" id="4oDuG44ZegN" role="ZXjPg">
        <property role="1MXi1$" value="JXACHQTPNC" />
        <ref role="3Mj2Vh" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        <node concept="3MlLWZ" id="4oDuG44ZegV" role="3MjoVY">
          <property role="TrG5h" value="GSE59364_DC_all.csv" />
          <ref role="3MlLW5" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44Zegt" role="ZXjPg">
        <property role="1MXi1$" value="RQNXUOEHFK" />
      </node>
      <node concept="3cumlZ" id="4oDuG44ZegX" role="ZXjPg">
        <property role="1MXi1$" value="NFULYHOFFB" />
        <node concept="3MlLWZ" id="4oDuG44ZegY" role="3curr3">
          <property role="TrG5h" value="results" />
          <ref role="3MlLW5" node="4oDuG44ZegZ" resolve="results" />
          <node concept="3Mpm39" id="4oDuG44ZegZ" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="results" />
            <node concept="31JHg8" id="5_ScChBzYZI" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYZJ" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZK" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYZL" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZM" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZN" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZO" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZP" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZQ" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZR" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYZS" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="10WucB" id="4oDuG44Zeh0" role="1f2fMI">
          <node concept="10WucW" id="4oDuG44Zelj" role="10WucA">
            <node concept="10WucS" id="4oDuG44Zelq" role="10Wuc$">
              <ref role="10WucV" node="4oDuG44Zelb" resolve="LPS_treatment" />
            </node>
            <node concept="10WucX" id="4oDuG44Zeh1" role="10Wuc_" />
          </node>
        </node>
        <node concept="10Y$WD" id="4oDuG44Zelx" role="1f2fR1">
          <node concept="10Y$WG" id="4oDuG44ZelC" role="10Y$WE">
            <ref role="10Y$WJ" node="4oDuG44Ze7V" resolve="LPS=yes" />
          </node>
          <node concept="10Y$WG" id="4oDuG44Zelt" role="10Y$WF">
            <ref role="10Y$WJ" node="4oDuG44Ze7R" resolve="LPS=no" />
          </node>
        </node>
        <node concept="3MlLWZ" id="4oDuG44Zeh3" role="1Izna5">
          <property role="TrG5h" value="default" />
          <ref role="3MlLW5" node="4oDuG44Zeh4" resolve="default" />
          <node concept="3Mpm39" id="4oDuG44Zeh4" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="default" />
            <node concept="31JHg8" id="5_ScChBzYY3" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYY6" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYY7" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYc" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYg" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYh" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYi" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYj" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYn" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYo" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYp" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYq" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYu" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYv" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYw" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYx" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYY_" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYA" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYB" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYC" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYG" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYH" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYI" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYJ" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYN" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYO" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYP" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYQ" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYYU" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYYV" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYYW" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYYX" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZ1" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZ2" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZ3" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZ4" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZ8" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZ9" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZa" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZb" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZf" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZg" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZh" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZi" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZm" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZn" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZo" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZp" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZt" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZu" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZv" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZw" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZ$" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZ_" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZA" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYZB" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYZF" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYZG" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYZH" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="afgQW" id="4oDuG44Zeho" role="3cupLz">
          <ref role="afgo8" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44ZegA" role="ZXjPg">
        <property role="1MXi1$" value="LLTHNKRBRT" />
      </node>
      <node concept="3MoTRY" id="4oDuG44ZelF" role="ZXjPg">
        <property role="1MXi1$" value="WCHSIDUDDH" />
        <node concept="3MlLWZ" id="4oDuG44ZelI" role="3Mq1V4">
          <property role="TrG5h" value="joined" />
          <ref role="3MlLW5" node="4oDuG44ZelJ" resolve="joined" />
          <node concept="3Mpm39" id="4oDuG44ZelJ" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="joined" />
            <node concept="31JHg8" id="5_ScChBzZ5W" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ60" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ61" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ62" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5I" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ5M" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ5N" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ5O" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6O" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6S" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6T" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6U" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ63" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ67" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ68" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ69" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5v" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5_" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzZ5C" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ5D" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5y" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6V" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6Z" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ70" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ71" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5E" role="31JHgj">
              <property role="TrG5h" value="mRNA len" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5n" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzZ5p" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5$" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5z" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6o" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6s" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6t" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6u" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5w" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5x" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ79" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ7d" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ7e" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ7f" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5q" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzZ5t" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ5u" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6A" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6E" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6F" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6G" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5F" role="31JHgj">
              <property role="TrG5h" value="genomic span" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6h" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6l" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6m" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6n" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5G" role="31JHgj">
              <property role="TrG5h" value="DC_normal" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5P" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ5T" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ5U" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ5V" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6H" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6L" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6M" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6N" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ5H" role="31JHgj">
              <property role="TrG5h" value="DC_treated" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6a" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6e" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6f" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6g" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ6v" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ6z" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ6$" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ6_" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzZ72" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzZ76" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzZ77" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzZ78" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3MW7Y8" id="4oDuG44Zenw" role="3MHf7a">
          <ref role="3MW7Y9" node="4oDuG44Ze4P" resolve="ID" />
        </node>
        <node concept="3MqhDd" id="4oDuG44Zenj" role="3Mqss8">
          <ref role="3Mqssv" node="4oDuG44ZegY" resolve="results" />
        </node>
        <node concept="3MqhDd" id="4oDuG44Zenr" role="3Mqss8">
          <ref role="3Mqssv" node="4oDuG44ZegV" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44ZewL" role="ZXjPg">
        <property role="1MXi1$" value="YQVKTLHTUS" />
      </node>
      <node concept="3WuldX" id="4oDuG44ZeAa" role="ZXjPg">
        <property role="1MXi1$" value="RFCTQOJIFN" />
        <node concept="3MlLWZ" id="4oDuG44ZeAb" role="3W64wA">
          <property role="TrG5h" value="subset" />
          <ref role="3MlLW5" node="4oDuG44ZeAc" resolve="subset" />
          <node concept="3Mpm39" id="4oDuG44ZeAc" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="subset" />
            <node concept="31JHg8" id="5_ScChBzYQo" role="31JHgj">
              <property role="TrG5h" value="genomic span" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYQp" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYQt" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYQu" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYQv" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYQw" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYQx" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYQ_" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYQA" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYQB" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYQC" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYQG" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYQH" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYQI" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYQJ" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYQN" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYQO" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYQP" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYQQ" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYQU" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYQV" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYQW" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYQX" role="31JHgj">
              <property role="TrG5h" value="mRNA len" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYQY" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYR2" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYR3" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYR4" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYR5" role="31JHgj">
              <property role="TrG5h" value="DC_treated" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYR6" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRa" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRb" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYRc" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRd" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYRg" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRh" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRi" role="31JHgj">
              <property role="TrG5h" value="DC_normal" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYRj" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRn" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRo" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYRp" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRq" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYRr" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYRt" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYRu" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRy" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRz" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYR$" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYR_" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRD" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRE" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYRF" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRG" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChBzYRJ" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRK" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRL" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRP" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRQ" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYRR" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYRS" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYRT" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYRX" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYRY" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYRZ" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYS0" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYS1" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYS5" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYS6" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYS7" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYS8" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBzYS9" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChBzYSd" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChBzYSe" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChBzYSf" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChBzYSg" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="2Qf$4g" id="4oDuG44ZeH0" role="3Wum5r">
          <node concept="31$ALs" id="4oDuG44ZeH2" role="QaakN">
            <node concept="3eOVzh" id="4oDuG44ZeHu" role="31$ALt">
              <node concept="3b6qkQ" id="4oDuG44ZeM5" role="3uHU7w">
                <property role="$nhwW" value="0.0001" />
              </node>
              <node concept="3$Gm2I" id="4oDuG44ZeHb" role="3uHU7B">
                <ref role="3$Gm2J" node="5_ScChBzZ5z" resolve="adj.P.Val" />
              </node>
            </node>
          </node>
        </node>
        <node concept="afgQW" id="4oDuG44ZeD3" role="aecac">
          <ref role="afgo8" node="4oDuG44ZelJ" resolve="joined" />
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44Zers" role="ZXjPg">
        <property role="1MXi1$" value="ORHMNCVDTJ" />
      </node>
      <node concept="1FHY16" id="4oDuG44ZgCB" role="ZXjPg">
        <property role="1MXi1$" value="QEGVPKFBDM" />
        <ref role="L_9Jz" node="4oDuG44Zjfv" resolve="HeatmapStyle" />
        <node concept="2tnku" id="4oDuG44ZgCC" role="2thHW">
          <property role="2Lhm2Y" value="true" />
          <ref role="2wXwy3" node="4oDuG44Ze4P" resolve="ID" />
          <node concept="2tndn" id="4oDuG44ZgI5" role="2tncD">
            <ref role="2tne1" node="4oDuG44Zelb" resolve="LPS_treatment" />
          </node>
          <node concept="2Mr_BI" id="4oDuG44ZgI7" role="2Mr_oq" />
        </node>
        <node concept="1FHg$p" id="4oDuG44ZgCE" role="1FHg$q">
          <property role="ZHjxa" value="400" />
          <property role="ZHjG8" value="200" />
          <property role="3ZMXzF" value="9" />
          <property role="TrG5h" value="myheatmap" />
        </node>
        <node concept="afgQW" id="4oDuG44ZgGL" role="af7lV">
          <ref role="afgo8" node="4oDuG44ZeAc" resolve="subset" />
        </node>
        <node concept="2spSBU" id="4oDuG44ZgHY" role="1FHY3$">
          <node concept="3MW7Y8" id="4oDuG44ZgHZ" role="2spSxu">
            <ref role="3MW7Y9" node="4oDuG44Ze7V" resolve="LPS=yes" />
          </node>
          <node concept="3MW7Y8" id="4oDuG44ZgI2" role="2spSxu">
            <ref role="3MW7Y9" node="4oDuG44Ze7R" resolve="LPS=no" />
          </node>
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44ZjG3" role="ZXjPg">
        <property role="1MXi1$" value="JDXKHIOJXX" />
      </node>
      <node concept="313sG1" id="4oDuG44ZilB" role="ZXjPg">
        <property role="1MXi1$" value="FJMSAJGNLW" />
        <property role="313rra" value="1" />
        <property role="313rrk" value="1" />
        <property role="31lnkE" value="true" />
        <node concept="1FHg$p" id="4oDuG44ZilC" role="319mBM">
          <property role="ZHjxa" value="200" />
          <property role="ZHjG8" value="200" />
          <property role="3ZMXzF" value="11" />
          <property role="TrG5h" value="multi" />
        </node>
        <node concept="31becx" id="4oDuG44ZipR" role="312phR">
          <property role="1MXi1$" value="NKDGFOLDIR" />
          <ref role="312p7B" node="4oDuG44ZgCE" resolve="myheatmap" />
        </node>
      </node>
      <node concept="SsgEw" id="4oDuG44ZhuL" role="ZXjPg">
        <property role="1MXi1$" value="OQASODQNQK" />
        <property role="165MX6" value="6" />
        <property role="165MyL" value="4" />
        <ref role="Ss6T5" node="4oDuG44ZgCE" resolve="myheatmap" />
        <node concept="Ss6Tf" id="4oDuG44Zhz3" role="Ss6Td" />
        <node concept="2jXUOv" id="4oDuG44ZhuP" role="2jX3UN">
          <property role="2jXUS1" value="heatmap.pdf" />
        </node>
      </node>
      <node concept="SsgEw" id="4oDuG44ZiJ3" role="ZXjPg">
        <property role="1MXi1$" value="UKBYCTOIEQ" />
        <ref role="Ss6T5" node="4oDuG44ZilC" resolve="multi" />
        <node concept="Ss6Tf" id="4oDuG44ZiWy" role="Ss6Td" />
        <node concept="2jXUOv" id="4oDuG44ZiJ7" role="2jX3UN">
          <property role="2jXUS1" value="multi.pdf" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2YPoW8" id="4oDuG44Zjfv">
    <property role="TrG5h" value="HeatmapStyle" />
    <node concept="24aBtg" id="4oDuG44Zjfw" role="2YPqp2">
      <property role="TrG5h" value="Sequential-YellowOrangeRed" />
      <ref role="24aBtv" to="wiqx:1xsIq4y9NE" resolve="Sequential-YellowOrangeRed" />
    </node>
  </node>
</model>

