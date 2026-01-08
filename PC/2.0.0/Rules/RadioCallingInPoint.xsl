<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="RadioCallingInPoint[@primitive='Point']" priority="1">
    <pointInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <symbol reference="127symb2">
	</symbol>
    </pointInstruction>
  </xsl:template>
  <!--
  <xsl:template match="RadioCallingInPoint[@primitive='Point' and (trafficFlow=1 or trafficFlow=2 or trafficFlow=3) ]" priority="1">
    <pointInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <symbol reference="RadioCallingInPoint_3A" rotation="{orientationValue}"/>
    </pointInstruction>
  </xsl:template>
  -->
  <xsl:template match="RadioCallingInPoint[@primitive='Curve']" priority="1">
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <lineStyleReference reference="RadioCallingInPoint_1A"/>
    </lineInstruction>
  </xsl:template>
  <!--  <xsl:template match="RadioCallingInPoint[@primitive='Curve' and (trafficFlow=1 or trafficFlow=2 or trafficFlow=3)]" priority="1">
    <lineInstruction>
      <featureReference>
        <xsl:value-of select="@id"/>
      </featureReference>
      <viewingGroup>12710</viewingGroup>
      <displayPlane>OVERRADAR</displayPlane>
      <drawingPriority>15</drawingPriority>
      <lineStyleReference reference="RadioCallingInPoint_3A"/>
    </lineInstruction>
  </xsl:template>
  -->
</xsl:transform>
