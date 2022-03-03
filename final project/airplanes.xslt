<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:output indent="yes" />

    <xsl:template match="Response">
        <table>
            <tr>
                <th>Facility</th>
                <th>Latitude</th>
                <th>Longitude</th>
            </tr>
            <xsl:apply-templates select="response/row/row" />
        </table>
    </xsl:template>
    
    <xsl:template match="response/row/row">
        <tr>
            <td><xsl:value-of select="facility" /></td>
            <td><xsl:value-of select="latdd" /></td>
            <td><xsl:value-of select="longdd" /></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>