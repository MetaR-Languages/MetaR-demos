<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0245eb13-3db3-4744-b6c2-08125289f1ac(common)">
  <persistence version="9" />
  <languages>
    <use id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart" version="0" />
    <use id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables" version="3" />
  </languages>
  <imports>
    <import index="9nc5" ref="r:d1a256e6-591a-459f-809c-7fc9df45e4d5(org.campagnelab.mps.XChart.types.roots)" />
  </imports>
  <registry>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="8031339867720116703" name="org.campagnelab.metar.tables.structure.UsageTypeRef" flags="ng" index="2y_Ijh">
        <reference id="8031339867720116704" name="usage" index="2y_IjI" />
      </concept>
      <concept id="8016431400517087678" name="org.campagnelab.metar.tables.structure.UsageType" flags="ng" index="2_mUhs" />
      <concept id="3402264987258987827" name="org.campagnelab.metar.tables.structure.Table" flags="ng" index="3Mpm39">
        <property id="578023650349875540" name="pathToResolve" index="26T8KA" />
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
  <node concept="3Mpm39" id="10uFxk4w7eP">
    <property role="31Cu5t" value="&#9;" />
    <property role="26T8KA" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="31JHgl" value="/Users/mas2182/WORK/CTSC/Projects/MetaR_demos/input-data/GSE59364_DC_all.csv" />
    <property role="TrG5h" value="GSE59364_DC_all.csv" />
    <node concept="31JHg8" id="5_ScChB$0Pt" role="31JHgj">
      <property role="TrG5h" value="gene" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
      <node concept="3MzsTm" id="5_ScChB$0Pu" role="lGtFl">
        <node concept="3MzsBX" id="5_ScChBPIdH" role="3MztjM">
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
</model>

