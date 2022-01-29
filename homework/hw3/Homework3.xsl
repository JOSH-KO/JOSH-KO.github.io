<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <link href="/css/main.css" rel="stylesheet" type="text/css"/>
                <title>Plant Catalog</title>
            <style>
             table, th, td {
             border: 1px solid black;
             }

             th, td {
             padding: 18px;
             }

             table {
             border-collapse: collapse;
             }   
             
            tr:nth-child(2) {
            background-color: Gainsboro;
            }

            tr:nth-child(4) {
            background-color: Gainsboro;
            }
                
                
            tr:nth-child(6) {
            background-color: Gainsboro;
            }
                
                
            tr:nth-child(1) {
            background-color: #FFFFF0;
            }
                
            tr:nth-child(3) {
            background-color: #FFFFF0;
            }

                
            tr:nth-child(5) {
            background-color: #FFFFF0;
            }
                
            tr:hover {background-color: #FFD700;}
                
            </style>
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
