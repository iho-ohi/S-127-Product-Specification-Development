<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="PilotService[@primitive='Surface']" priority="1">
    <xsl:if test="featureName!= ''">
      <textInstruction>
        <featureReference>
          <xsl:value-of select="@id"/>
        </featureReference>
        <viewingGroup>26</viewingGroup>
        <displayPlane>UNDERRADAR</displayPlane>
        <drawingPriority>9</drawingPriority>
        <textPoint horizontalAlignment="Center" verticalAlignment="Center">
          <element>
            <text>
              <xsl:apply-templates select="featureName" mode="text"/>
            </text>
            <xsl:call-template name="textStyle">
              <xsl:with-param name="style">default</xsl:with-param>
            </xsl:call-template>
          </element>
          <offset>
            <x>4</x>
            <y>0</y>
          </offset>
          <areaPlacement placementMode="VisibleParts"/>
        </textPoint>
      </textInstruction>
    </xsl:if>
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
	  	<xsl:call-template name="simpleLineStyle">
			<xsl:with-param name="style">dash</xsl:with-param>
			<xsl:with-param name="width">0.64</xsl:with-param>
		<xsl:with-param name="colour">UINFB</xsl:with-param>
		</xsl:call-template>
    </lineInstruction>
  </xsl:template>
</xsl:transform>
