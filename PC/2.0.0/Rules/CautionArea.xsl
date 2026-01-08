<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="CautionArea[@primitive='Surface']" priority="1">
    <pointInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <symbol reference="127INFORM01"/>
    </pointInstruction>
	
	 <lineInstruction>
	<featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
	      <lineStyle>
        <capStyle/>
        <joinStyle/>
        <intervalLength>5.4</intervalLength>
        <offset/>
		<pen width="0.64" transparency="50">
			<color>UINFB</color>
		</pen>
        <dash>
          <start>0.0</start>
          <length>3.6</length>
        </dash>
      </lineStyle>
    </lineInstruction>
<!--
	
	
   <lineInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
	  	<xsl:call-template name="simpleLineStyle">
			<xsl:with-param name="style">dash</xsl:with-param>
			<xsl:with-param name="width">0.64</xsl:with-param>
		<xsl:with-param name="colour">UINFB</xsl:with-param>
		</xsl:call-template>
    </lineInstruction>
  -->
 <!-- <lineInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
	  	<xsl:call-template name="simpleLineStyle">
			<xsl:with-param name="style">dash</xsl:with-param>
			<xsl:with-param name="width">4</xsl:with-param>
		<xsl:with-param name="colour">UINFB</xsl:with-param>
		<xsl:with-param name="transparency">30</xsl:with-param>
		</xsl:call-template>
    </lineInstruction>
-->
  </xsl:template>
    <xsl:template match="CautionArea[@primitive='Point']" priority="1">
    <pointInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <symbol reference="127symb"/>
    </pointInstruction>
  </xsl:template>
</xsl:transform>
