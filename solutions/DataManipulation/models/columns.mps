<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce79bb46-dda0-4d8f-b3e5-1d2f55935511(columns)">
  <persistence version="9" />
  <languages>
    <devkit ref="8a3636fa-c6ec-4cb0-bc2a-b7143f2a4937(org.campagnelab.metaR)" />
  </languages>
  <imports>
    <import index="9nc5" ref="r:d1a256e6-591a-459f-809c-7fc9df45e4d5(org.campagnelab.mps.XChart.types.roots)" implicit="true" />
  </imports>
  <registry>
    <language id="95951e17-c0d6-47b9-b1b5-42a4ca186fc6" name="org.campagnelab.instantrefresh">
      <concept id="1254484692210402710" name="org.campagnelab.instantrefresh.structure.IAtomic" flags="ng" index="16dhqS">
        <property id="221363389440938160" name="ID" index="1MXi1$" />
      </concept>
    </language>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="4451133196879828915" name="org.campagnelab.metar.tables.structure.TableRef" flags="ng" index="afgQW">
        <reference id="4451133196879830023" name="table" index="afgo8" />
      </concept>
      <concept id="4373413171209893142" name="org.campagnelab.metar.tables.structure.TableColumn" flags="ng" index="2xiS$d">
        <child id="4373413171209893146" name="columnRef" index="2xiS$1" />
      </concept>
      <concept id="4373413171209891735" name="org.campagnelab.metar.tables.structure.OrderByColumn" flags="ng" index="2xiTec">
        <child id="4373413171209893148" name="tableColumn" index="2xiS$7" />
      </concept>
      <concept id="457990346354367585" name="org.campagnelab.metar.tables.structure.ReorderTable" flags="ng" index="BmouE">
        <child id="457990346354420412" name="orderBy" index="Bm75R" />
        <child id="457990346354368953" name="destination" index="BmrDM" />
        <child id="457990346354368951" name="table" index="BmrDW" />
      </concept>
      <concept id="8962032619593737380" name="org.campagnelab.metar.tables.structure.Analysis" flags="ng" index="S1EQb">
        <child id="8962032619593737383" name="statements" index="S1EQ8" />
      </concept>
      <concept id="8962032619593737377" name="org.campagnelab.metar.tables.structure.EmptyLine" flags="ng" index="S1EQe" />
      <concept id="8962032619582305406" name="org.campagnelab.metar.tables.structure.StatementList" flags="ng" index="ZXjPh">
        <child id="8962032619582305407" name="transformations" index="ZXjPg" />
      </concept>
      <concept id="7575483536003856472" name="org.campagnelab.metar.tables.structure.TablePreview" flags="ng" index="34tvTV">
        <property id="7575483536004765689" name="preview" index="34gX7q" />
        <property id="7575483536003856646" name="numColumns" index="34tvW_" />
        <property id="7575483536003856644" name="numRows" index="34tvWB" />
        <child id="7575483536003856630" name="tableRef" index="34tvVl" />
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
      <concept id="3402264987262235801" name="org.campagnelab.metar.tables.structure.ColumnRef" flags="ng" index="3MHf5z">
        <reference id="3402264987262235802" name="col" index="3MHf5w" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
  <node concept="3Mpm39" id="10uFxk4w7eP">
    <property role="31Cu5t" value="&#9;" />
    <property role="26T8KA" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="31JHgl" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="TrG5h" value="GSE59364_DC_all.csv" />
    <node concept="31JHg8" id="5_ScChBPJ6n" role="31JHgj">
      <property role="TrG5h" value="gene" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
    </node>
    <node concept="31JHg8" id="5_ScChBPJ6o" role="31JHgj">
      <property role="TrG5h" value="mRNA len" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChBPJ6p" role="31JHgj">
      <property role="TrG5h" value="genomic span" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChBPJ6q" role="31JHgj">
      <property role="TrG5h" value="DC_normal" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="5_ScChBPJ6r" role="31JHgj">
      <property role="TrG5h" value="DC_treated" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
  </node>
  <node concept="S1EQb" id="5_ScChBPLlx">
    <property role="TrG5h" value="ReorderColumns" />
    <node concept="ZXjPh" id="5_ScChBPLly" role="S1EQ8">
      <property role="1MXi1$" value="XVREJPIEHR" />
      <node concept="3MjoWR" id="5_ScChBPLlz" role="ZXjPg">
        <property role="1MXi1$" value="YWSPANJLKB" />
        <ref role="3Mj2Vh" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        <node concept="3MlLWZ" id="5_ScChBPLlC" role="3MjoVY">
          <property role="TrG5h" value="GSE59364_DC_all.csv" />
          <ref role="3MlLW5" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="S1EQe" id="5_ScChBPLlU" role="ZXjPg">
        <property role="1MXi1$" value="QFFOJGREAA" />
      </node>
      <node concept="34tvTV" id="5_ScChBPLsW" role="ZXjPg">
        <property role="1MXi1$" value="KWRAFCWVMJ" />
        <property role="34tvW_" value="4" />
        <property role="34tvWB" value="10" />
        <property role="34gX7q" value="true" />
        <node concept="afgQW" id="5_ScChBPLw1" role="34tvVl">
          <ref role="afgo8" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="BmouE" id="5_ScChBPLmb" role="ZXjPg">
        <property role="1MXi1$" value="KUHHCKLYAI" />
        <node concept="3MlLWZ" id="5_ScChBPLmc" role="BmrDM">
          <property role="TrG5h" value="OrderTable" />
          <ref role="3MlLW5" node="5_ScChBPLmd" resolve="OrderTable" />
          <node concept="3Mpm39" id="5_ScChBPLmd" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="OrderTable" />
            <node concept="31JHg8" id="5_ScChBPMkc" role="31JHgj">
              <property role="TrG5h" value="mRNA len" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkd" role="31JHgj">
              <property role="TrG5h" value="genomic span" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMke" role="31JHgj">
              <property role="TrG5h" value="DC_normal" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkf" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkg" role="31JHgj">
              <property role="TrG5h" value="DC_treated" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkh" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMki" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkj" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkk" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkl" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkm" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkn" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMko" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkp" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkq" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkr" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMks" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMkt" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="5_ScChBPMku" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="afgQW" id="5_ScChBPLmO" role="BmrDW">
          <ref role="afgo8" node="10uFxk4w7eP" resolve="GSE59364_DC_all.csv" />
        </node>
        <node concept="2xiTec" id="5_ScChBPLmV" role="Bm75R">
          <node concept="2xiS$d" id="5_ScChBPLmZ" role="2xiS$7">
            <node concept="3MHf5z" id="5_ScChBPLn0" role="2xiS$1">
              <ref role="3MHf5w" node="5_ScChBPJ6o" resolve="mRNA len" />
            </node>
          </node>
          <node concept="2xiS$d" id="5_ScChBPLn1" role="2xiS$7">
            <node concept="3MHf5z" id="5_ScChBPLn2" role="2xiS$1">
              <ref role="3MHf5w" node="5_ScChBPJ6p" resolve="genomic span" />
            </node>
          </node>
          <node concept="2xiS$d" id="5_ScChBPLn3" role="2xiS$7">
            <node concept="3MHf5z" id="5_ScChBPLn4" role="2xiS$1">
              <ref role="3MHf5w" node="5_ScChBPJ6q" resolve="DC_normal" />
            </node>
          </node>
          <node concept="2xiS$d" id="5_ScChBPLmX" role="2xiS$7">
            <node concept="3MHf5z" id="5_ScChBPLmY" role="2xiS$1">
              <ref role="3MHf5w" node="5_ScChBPJ6n" resolve="gene" />
            </node>
          </node>
          <node concept="2xiS$d" id="5_ScChBPLn5" role="2xiS$7">
            <node concept="3MHf5z" id="5_ScChBPLn6" role="2xiS$1">
              <ref role="3MHf5w" node="5_ScChBPJ6r" resolve="DC_treated" />
            </node>
          </node>
        </node>
      </node>
      <node concept="34tvTV" id="5_ScChBPLLx" role="ZXjPg">
        <property role="1MXi1$" value="QIIRBPYQNK" />
        <property role="34tvW_" value="4" />
        <property role="34tvWB" value="10" />
        <property role="34gX7q" value="true" />
        <node concept="afgQW" id="5_ScChBPLPU" role="34tvVl">
          <ref role="afgo8" node="5_ScChBPLmd" resolve="OrderTable" />
        </node>
      </node>
      <node concept="S1EQe" id="5_ScChBPMnu" role="ZXjPg">
        <property role="1MXi1$" value="VULXFFKXBL" />
      </node>
      <node concept="S1EQe" id="5_ScChBPMq7" role="ZXjPg">
        <property role="1MXi1$" value="UPDOABVEBT" />
      </node>
      <node concept="S1EQe" id="5_ScChBPMsO" role="ZXjPg">
        <property role="1MXi1$" value="GIUDBYJEXC" />
      </node>
    </node>
  </node>
</model>

