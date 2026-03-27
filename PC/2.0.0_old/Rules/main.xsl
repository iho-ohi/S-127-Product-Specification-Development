<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:decimal-format name="dformat" decimal-separator="." grouping-separator=","/>

  <!--Include templates/rules for: styles-->
  <xsl:include href="simpleLineStyle.xsl"/>
  <xsl:include href="attributeRules.xsl"/>
  <xsl:include href="textStyle.xsl"/>
  
  <!--Include templates/rules for: GeoFeature-->
  <xsl:include href="CautionArea.xsl"/>
  <xsl:include href="ConcentrationOfShippingHazardArea.xsl"/>
  <xsl:include href="ISPSCodeSecurityLevel.xsl"/>
  <xsl:include href="LocalPortBroadcastServiceArea.xsl"/>
  <xsl:include href="MilitaryPracticeArea.xsl"/>
  <xsl:include href="PilotageDistrict.xsl"/>
  <xsl:include href="PilotBoardingPlace.xsl"/>
  <xsl:include href="PilotService.xsl"/>
  <xsl:include href="PiracyRiskArea.xsl"/>
  <xsl:include href="PlaceOfRefuge.xsl"/>
  <xsl:include href="RadarRange.xsl"/>
  <xsl:include href="RadioCallingInPoint.xsl"/>
  <xsl:include href="RestrictedArea.xsl"/>
  <xsl:include href="RouteingMeasure.xsl"/>
  <xsl:include href="ShipReportingServiceArea.xsl"/>
  <xsl:include href="SignalStationTraffic.xsl"/>
  <xsl:include href="SignalStationWarning.xsl"/>
  <xsl:include href="TextPlacement.xsl"/>
  <xsl:include href="UnderKeelClearanceAllowanceArea.xsl"/>
  <xsl:include href="UnderKeelClearanceManagementArea.xsl"/>
  <xsl:include href="VesselTrafficServiceArea.xsl"/>
  <xsl:include href="WaterwayArea.xsl"/>
  
  <!--Include templates/rules for: MetaFeature-->
  <xsl:include href="DataCoverage.xsl"/>
  <xsl:include href="QualityOfNonBathymetricData.xsl"/>
  
  <!--Include templates/rules for: Default-->
  <xsl:include href="Default.xsl"/>

	<xsl:template match="/">
		<displayList>
			<xsl:apply-templates select="Dataset/Features/*"/>
		</displayList>
	</xsl:template>
</xsl:transform>
