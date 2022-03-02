<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <link href="/final project/Final_css.css" rel="stylesheet" type="text/css"/>
                <title>California Airports, 2020</title>
            </head>
            <body> 
                <h1>California Airports, 2020</h1>
                <xsl:call-template name="airport_table" />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="response" name="airport_table">
        
        <table>
            <tr>
                <th>Facility</th>
                <th>City</th>
                <th>County</th>
                <th>AirportID</th>
                <th>FAA Site Number</th>
                <th>State Class</th>
                <th>FAA Class</th>
                <th>Phone Number</th>
                <th>Manager Name</th>
                <th>Email</th>
                <th>Location</th>
            </tr>
            <xsl:apply-templates select="response/row/row" />
        </table>
    </xsl:template>
    
    <xsl:template match="response/row/row">
        <tr>
            <td><xsl:value-of select="facility" /></td>
            <td><xsl:value-of select="city" /></td>
            <td><xsl:value-of select="county" /></td>
            <td><xsl:value-of select="airportid" /></td>
            <td><xsl:value-of select="faasiteno" /></td>
            <td><xsl:value-of select="stateclass" /></td>
            <td><xsl:value-of select="faasrvclvl" /></td>
            <td><xsl:value-of select="phone" /></td>
            <td><xsl:value-of select="manager" /></td>
            <td><a><xsl:attribute name="href"><xsl:value-of select="concat('mailto:', mngremail)" /></xsl:attribute><xsl:value-of select="mngremail" /></a></td>
            <td><a><xsl:attribute name="href"><xsl:value-of select="concat('https://www.google.com/maps/search/?api=1&amp;query=', latdd, '%2c', longdd)" disable-output-escaping="yes" /></xsl:attribute>Map Link</a></td>
        </tr>  
    </xsl:template>
</xsl:stylesheet>