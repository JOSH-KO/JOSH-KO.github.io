<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <link href="http://josh-ko.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                <title>Plant Catalog</title>
            </head>
            <body>
                <h1>Plant Catalog</h1>
                <table>
                    <tr>
                        <th>Common Name</th>
                        <th>Botanical Name</th>
                        <th>Zone</th>
                        <th>Light</th>
                        <th>Price</th>
                        <th>Availability</th>
                    </tr>
                    <xsl:for-each select="CATALOG/PLANT">
                        <tr>
                            <td><xsl:value-of select="COMMON" /></td>
                            <td><xsl:value-of select="BOTANICAL" /></td>
                            <td><xsl:value-of select="ZONE" /></td>
                            <td><xsl:value-of select="LIGHT" /></td>
                            <td><xsl:value-of select="PRICE" /></td>
                            <td><xsl:value-of select="AVAILABILITY" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>