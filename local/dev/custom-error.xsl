<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dp="http://www.datapower.com/extensions"
    xmlns:dpconfig="http://www.datapower.com/param/config"
    xmlns:dpfunc="http://www.datapower.com/extensions/functions" exclude-result-prefixes="dp" extension-element-prefixes="dp dpconfig dpfunc" version="1.0">
    <xsl:template match="/">
        <xsl:variable name="rejected">
            <env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">
                <env:Body>
                    <env:Fault>
                        <faultcode>env:Client</faultcode>
                        <faultstring>
                            <xsl:element name="error_headers">
                                <xsl:copy-of select="dp:variable('var://service/error-headers')"/>
                            </xsl:element>
                            <xsl:element name="error_message">
                                <xsl:copy-of select="dp:variable('var://service/error-message')" />
                            </xsl:element>
                            <xsl:element name="transaction_id">
                                <xsl:value-of select="dp:variable('var://service/transaction-id')"/>
                            </xsl:element>
                            <xsl:element name="error_code">
                                <xsl:value-of select="dp:variable('var://service/error-code')"/>
                            </xsl:element>
                            <xsl:element name="error_subcode">
                                <xsl:value-of select="dp:variable('var://service/error-subcode')"/>
                            </xsl:element>
                            <xsl:element name="formatted_error_msg">
                                <xsl:value-of select="dp:variable('var://service/formatted-error-message')"/>
                            </xsl:element>
                            <xsl:element name="error_protocol_reason_phrase">
                                <xsl:value-of select="dp:variable('var://service/error-protocol-reason-phrase')"/>
                            </xsl:element>
                        </faultstring>
                    </env:Fault>
                </env:Body>
            </env:Envelope>
        </xsl:variable>
        <xsl:copy-of select="$rejected"/>
    </xsl:template>
</xsl:stylesheet>