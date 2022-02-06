<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <link href="/css/main.css" rel="stylesheet" type="text/css"/>
                <title>Research Journals</title>
            </head>
            <body>
                <h1>Research Journals</h1>
                <table>
                    <tr>
                        <th>Journal Name</th>
                        <th>Institution Name</th>
                        <th>URL</th>
                        
                    </tr>
                    <xsl:for-each select="Journal-Data/Journal">
                        <tr>
                            <td><xsl:value-of select="Journal-Name" /></td>
                            <td><xsl:value-of select="Institution-Name" /></td>
                            <td><xsl:value-of select="URL" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
    
