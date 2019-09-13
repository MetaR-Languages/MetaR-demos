<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:46dd0eb9-c876-4708-86d0-60bf4d4881a4(QCWithMAPlot)">
  <persistence version="9" />
  <languages>
    <use id="e6c108c3-0009-4034-b684-c506814ba197" name="org.campagnelab.metar.plots" version="0" />
    <devkit ref="8a3636fa-c6ec-4cb0-bc2a-b7143f2a4937(org.campagnelab.metaR)" />
  </languages>
  <imports>
    <import index="9nc5" ref="r:d1a256e6-591a-459f-809c-7fc9df45e4d5(org.campagnelab.mps.XChart.types.roots)" implicit="true" />
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
    <language id="e6c108c3-0009-4034-b684-c506814ba197" name="org.campagnelab.metar.plots">
      <concept id="3813864828777690549" name="org.campagnelab.metar.plots.structure.MAPlot" flags="ng" index="3giYhJ">
        <property id="3813864828778063065" name="significanceLevelFDR" index="3ggrk3" />
        <property id="3813864828778063070" name="minExpression" index="3ggrk4" />
        <reference id="3813864828781131298" name="geneList" index="3gdQvS" />
        <reference id="4156558924933675462" name="geneName" index="3p2qAn" />
        <child id="6070133740826952602" name="plot" index="2_9Z7z" />
        <child id="3813864828777690556" name="statsTable" index="3giYhA" />
        <child id="4156558924933398744" name="meanExpression" index="3p3p29" />
        <child id="4156558924933398782" name="significanceLevelFDR" index="3p3p2J" />
        <child id="4156558924933398761" name="logFC" index="3p3p2S" />
      </concept>
    </language>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="4451133196879828915" name="org.campagnelab.metar.tables.structure.TableRef" flags="ng" index="afgQW">
        <reference id="4451133196879830023" name="table" index="afgo8" />
      </concept>
      <concept id="3929971219796704543" name="org.campagnelab.metar.tables.structure.OutputFile" flags="ng" index="2jXUOv">
        <property id="3929971219796704769" name="path" index="2jXUS1" />
      </concept>
      <concept id="2814838647967227455" name="org.campagnelab.metar.tables.structure.TSingleLineComment" flags="ng" index="nccVD">
        <child id="2814838647967227681" name="commentedStatement" index="nccZR" />
      </concept>
      <concept id="8031339867720116703" name="org.campagnelab.metar.tables.structure.UsageTypeRef" flags="ng" index="2y_Ijh">
        <reference id="8031339867720116704" name="usage" index="2y_IjI" />
      </concept>
      <concept id="8016431400517087678" name="org.campagnelab.metar.tables.structure.UsageType" flags="ng" index="2_mUhs" />
      <concept id="8962032619593737384" name="org.campagnelab.metar.tables.structure.Statement" flags="ng" index="S1EQ7">
        <property id="8962032619593737385" name="id" index="S1EQ6" />
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
      <concept id="8459500803719374384" name="org.campagnelab.metar.tables.structure.Plot" flags="ng" index="1FHg$p">
        <property id="8962032619586498917" name="width" index="ZHjxa" />
        <property id="8962032619586499111" name="height" index="ZHjG8" />
        <property id="4166618652723451261" name="plotId" index="3ZMXzF" />
      </concept>
      <concept id="3402264987261651661" name="org.campagnelab.metar.tables.structure.ImportTable" flags="ng" index="3MjoWR">
        <reference id="3402264987261692715" name="table" index="3Mj2Vh" />
        <child id="3402264987261651716" name="future" index="3MjoVY" />
      </concept>
      <concept id="3402264987259919045" name="org.campagnelab.metar.tables.structure.FutureTable" flags="ng" index="3MlLWZ">
        <reference id="3402264987259919103" name="table" index="3MlLW5" />
        <child id="4166618652720259019" name="myOwnTable" index="3WeD9t" />
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
      <concept id="3402264987262235801" name="org.campagnelab.metar.tables.structure.ColumnRef" flags="ng" index="3MHf5z">
        <reference id="3402264987262235802" name="col" index="3MHf5w" />
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
  </registry>
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
  <node concept="3Mpm39" id="59KhwZ6b$Z3">
    <property role="31Cu5t" value="&#9;" />
    <property role="26T8KA" value="/Users/mas2182/Desktop/GSE59364_DC_all.csv" />
    <property role="31JHgl" value="/Users/mas2182/Desktop/GSE59364_DC_all.csv" />
    <property role="TrG5h" value="GSE59364_DC_all.csv" />
    <node concept="31JHg8" id="59KhwZ6b_3o" role="31JHgj">
      <property role="TrG5h" value="gene" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
      <node concept="3MzsTm" id="59KhwZ6b_3p" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3q" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3r" role="31JHgj">
      <property role="TrG5h" value="mRNA len" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3s" role="31JHgj">
      <property role="TrG5h" value="genomic span" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3t" role="31JHgj">
      <property role="TrG5h" value="DC_normal" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3u" role="31JHgj">
      <property role="TrG5h" value="DC_treated" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3v" role="31JHgj">
      <property role="TrG5h" value="DC0904" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3w" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3x" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3y" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3z" role="31JHgj">
      <property role="TrG5h" value="DC0907" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3$" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3_" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3A" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3B" role="31JHgj">
      <property role="TrG5h" value="DCLPS0910" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3C" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3D" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3E" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3F" role="31JHgj">
      <property role="TrG5h" value="DCLPS0913" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3G" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3H" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3I" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3J" role="31JHgj">
      <property role="TrG5h" value="A_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3K" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3L" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3M" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3N" role="31JHgj">
      <property role="TrG5h" value="A_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3O" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3P" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3Q" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3R" role="31JHgj">
      <property role="TrG5h" value="B_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3S" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3T" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3U" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3V" role="31JHgj">
      <property role="TrG5h" value="B_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_3W" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_3X" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_3Y" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_3Z" role="31JHgj">
      <property role="TrG5h" value="C_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_40" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_41" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_42" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_43" role="31JHgj">
      <property role="TrG5h" value="C_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_44" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_45" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_46" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_47" role="31JHgj">
      <property role="TrG5h" value="C2DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_48" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_49" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_4a" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_4b" role="31JHgj">
      <property role="TrG5h" value="C2DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_4c" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_4d" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_4e" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_4f" role="31JHgj">
      <property role="TrG5h" value="C3DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_4g" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_4h" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_4i" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="59KhwZ6b_4j" role="31JHgj">
      <property role="TrG5h" value="C3DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="59KhwZ6b_4k" role="lGtFl">
        <node concept="3MzsBX" id="59KhwZ6b_4l" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
        </node>
        <node concept="3MzsBX" id="59KhwZ6b_4m" role="3MztjM">
          <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
        </node>
      </node>
    </node>
  </node>
  <node concept="S1EQb" id="4oDuG44Zegm">
    <property role="2BDq$p" value="false" />
    <property role="TrG5h" value="QC" />
    <node concept="ZXjPh" id="4oDuG44Zegn" role="S1EQ8">
      <property role="1MXi1$" value="RCPWYXXHFJ" />
      <node concept="S1EQe" id="4oDuG44Zego" role="ZXjPg">
        <property role="1MXi1$" value="XCXCAMEFIF" />
      </node>
      <node concept="3MjoWR" id="4oDuG44ZegN" role="ZXjPg">
        <property role="1MXi1$" value="ETJOEACHRV" />
        <ref role="3Mj2Vh" node="59KhwZ6b$Z3" resolve="GSE59364_DC_all.csv" />
        <node concept="3MlLWZ" id="4oDuG44ZegV" role="3MjoVY">
          <property role="TrG5h" value="GSE59364_DC_all.csv" />
          <ref role="3MlLW5" node="59KhwZ6b$Z3" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="S1EQe" id="4oDuG44Zegt" role="ZXjPg">
        <property role="1MXi1$" value="PUAIPDPSQO" />
      </node>
      <node concept="3cumlZ" id="4oDuG44ZegX" role="ZXjPg">
        <property role="1MXi1$" value="OGEQXXIPPC" />
        <node concept="3MlLWZ" id="4oDuG44ZegY" role="3curr3">
          <property role="TrG5h" value="results" />
          <ref role="3MlLW5" node="4oDuG44ZegZ" resolve="results" />
          <node concept="3Mpm39" id="4oDuG44ZegZ" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="results" />
            <node concept="31JHg8" id="5_ScChB$flP" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChB$flQ" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flR" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChB$flS" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$flT" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flU" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flV" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flW" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flX" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flY" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChB$flZ" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="10WucB" id="4oDuG44Zeh0" role="1f2fMI">
          <node concept="10WucW" id="4oDuG44Zelj" role="10WucA">
            <node concept="10WucS" id="1vtHRRvRDbv" role="10Wuc$">
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
            <node concept="31JHg8" id="5_ScChB$fka" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="5_ScChB$fkd" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fke" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4P" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkj" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fkn" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fko" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkp" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkq" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fku" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fkv" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkw" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkx" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fk_" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fkA" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkB" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkC" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fkG" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fkH" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkI" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkJ" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fkN" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fkO" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkP" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkQ" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fkU" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fkV" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fkW" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fkX" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fl1" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fl2" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fl3" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fl4" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fl8" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fl9" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$fla" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flb" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$flf" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$flg" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flh" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$fli" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$flm" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fln" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flo" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flp" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$flt" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$flu" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flv" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flw" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$fl$" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$fl_" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flA" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flB" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$flF" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$flG" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flH" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7R" resolve="LPS=no" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="5_ScChB$flI" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="5_ScChB$flM" role="lGtFl">
                <node concept="3MzsBX" id="5_ScChB$flN" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze4X" resolve="counts" />
                </node>
                <node concept="3MzsBX" id="5_ScChB$flO" role="3MztjM">
                  <ref role="3MzsBM" node="4oDuG44Ze7V" resolve="LPS=yes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="afgQW" id="1vtHRRvRD3f" role="3cupLz">
          <ref role="afgo8" node="59KhwZ6b$Z3" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="3giYhJ" id="7eyWL1Lfque" role="ZXjPg">
        <property role="S1EQ6" value="ODLFSKRUXK" />
        <property role="3ggrk4" value="-1.0" />
        <property role="3ggrk3" value="0.015" />
        <property role="1MXi1$" value="DEYPWUSQJA" />
        <ref role="3p2qAn" node="4oDuG44Ze4P" resolve="ID" />
        <node concept="3MqhDd" id="1vtHRRvRBy4" role="3giYhA">
          <ref role="3Mqssv" node="4oDuG44ZegY" resolve="results" />
        </node>
        <node concept="1FHg$p" id="7eyWL1Lfquk" role="2_9Z7z">
          <property role="ZHjxa" value="300" />
          <property role="ZHjG8" value="300" />
          <property role="3ZMXzF" value="5" />
          <property role="TrG5h" value="MAPlot" />
        </node>
        <node concept="3MHf5z" id="1vtHRRvRDan" role="3p3p29">
          <ref role="3MHf5w" node="5_ScChB$flV" resolve="AveExpr" />
        </node>
        <node concept="3MHf5z" id="1vtHRRvRDao" role="3p3p2S">
          <ref role="3MHf5w" node="5_ScChB$flU" resolve="logFC" />
        </node>
        <node concept="3MHf5z" id="1vtHRRvRDap" role="3p3p2J">
          <ref role="3MHf5w" node="5_ScChB$flY" resolve="adj.P.Val" />
        </node>
      </node>
      <node concept="S1EQe" id="1vtHRRvRBp5" role="ZXjPg">
        <property role="1MXi1$" value="EYJTGKJQMA" />
      </node>
      <node concept="nccVD" id="5_ScChBPEHs" role="ZXjPg">
        <property role="1MXi1$" value="IONRNPKPAA" />
        <node concept="3SKdUq" id="5_ScChBPEJg" role="nccZR">
          <property role="3SKdUp" value="QC on a subset of the Genes" />
        </node>
      </node>
      <node concept="3WoeC_" id="5_ScChB$fb0" role="ZXjPg">
        <property role="1MXi1$" value="LGHWKYELGF" />
        <node concept="3Wv0rH" id="5_ScChB$fcE" role="3WoeCz">
          <property role="TrG5h" value="Genes" />
          <node concept="3Wv0rE" id="5_ScChB$fcH" role="3Wv3z6">
            <property role="3Wv0rF" value="5H9" />
          </node>
          <node concept="3Wv0rE" id="5_ScChB$fcM" role="3Wv3z6">
            <property role="3Wv0rF" value="A2LG" />
          </node>
          <node concept="3Wv0rE" id="5_ScChB$fo0" role="3Wv3z6">
            <property role="3Wv0rF" value="A2M" />
          </node>
        </node>
      </node>
      <node concept="3giYhJ" id="5_ScChBPDwN" role="ZXjPg">
        <property role="1MXi1$" value="UEKOKOACDM" />
        <property role="3ggrk4" value="-10.0" />
        <property role="3ggrk3" value="0.015" />
        <ref role="3p2qAn" node="4oDuG44Ze4P" resolve="ID" />
        <ref role="3gdQvS" node="5_ScChB$fcE" resolve="Genes" />
        <node concept="3MqhDd" id="5_ScChBPDyK" role="3giYhA">
          <ref role="3Mqssv" node="4oDuG44ZegY" resolve="results" />
        </node>
        <node concept="1FHg$p" id="5_ScChBPDwR" role="2_9Z7z">
          <property role="ZHjxa" value="300" />
          <property role="ZHjG8" value="300" />
          <property role="3ZMXzF" value="1" />
          <property role="TrG5h" value="MAPlotSelectedGenes" />
        </node>
        <node concept="3MHf5z" id="5_ScChBPDyN" role="3p3p29">
          <ref role="3MHf5w" node="5_ScChB$flV" resolve="AveExpr" />
        </node>
        <node concept="3MHf5z" id="5_ScChBPDyO" role="3p3p2S">
          <ref role="3MHf5w" node="5_ScChB$flU" resolve="logFC" />
        </node>
        <node concept="3MHf5z" id="5_ScChBPDyP" role="3p3p2J">
          <ref role="3MHf5w" node="5_ScChB$flY" resolve="adj.P.Val" />
        </node>
      </node>
      <node concept="S1EQe" id="5_ScChB$fo4" role="ZXjPg">
        <property role="1MXi1$" value="TGTKEWMPYT" />
      </node>
      <node concept="313sG1" id="4oDuG44ZilB" role="ZXjPg">
        <property role="1MXi1$" value="TBDPLQOCCD" />
        <property role="313rra" value="2" />
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
          <ref role="312p7B" node="7eyWL1Lfquk" resolve="MAPlot" />
        </node>
        <node concept="31becx" id="5_ScChBPDzi" role="312phR">
          <property role="1MXi1$" value="CJQVKBVELU" />
          <ref role="312p7B" node="5_ScChBPDwR" resolve="MAPlotSelectedGenes" />
        </node>
      </node>
      <node concept="SsgEw" id="4oDuG44ZhuL" role="ZXjPg">
        <property role="1MXi1$" value="RTNPCFRWYV" />
        <property role="165MX6" value="6" />
        <property role="165MyL" value="4" />
        <ref role="Ss6T5" node="7eyWL1Lfquk" resolve="MAPlot" />
        <node concept="Ss6Tf" id="4oDuG44Zhz3" role="Ss6Td" />
        <node concept="2jXUOv" id="4oDuG44ZhuP" role="2jX3UN">
          <property role="2jXUS1" value="MAplot.pdf" />
        </node>
      </node>
    </node>
  </node>
</model>

