<?xml version="1.0"?>
<!-- Licensed Materials - Property of IBM IBM WebSphere DataPower Appliances Copyright IBM Corporation 2007. All Rights Reserved. US Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM
Corp. -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" extension-element-prefixes="dp" exclude-result-prefixes="dp">

  <xsl:output method="text" encoding="utf-8"/>
  <xsl:template match='/'>
  <xsl:choose>
    <xsl:when test="not(starts-with(//kenteken, '54'))">
      <dp:accept/>
    </xsl:when>
    <xsl:otherwise>
      <dp:reject>Code started with 54!!</dp:reject>
    </xsl:otherwise>
  </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
