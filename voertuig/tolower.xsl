<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Identity template,
        provides default behavior that copies all content into the output -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!--More specific template for Node766 that provides custom behavior -->
    <xsl:template match="kenteken|merk|model|voertuigsoort|brandstof|kleur">
        <xsl:copy>
            <xsl:value-of select="translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') "/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
