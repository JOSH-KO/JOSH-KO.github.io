<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
  
    <xsl:template match="Journal-Data"> 
        <Journal-Data>
            <xsl:apply-templates/>
        </Journal-Data>
    </xsl:template>

    <xsl:template match="Journal"> 
        <Journal>
            <xsl:apply-templates/>
        </Journal>
    </xsl:template>

    <xsl:template match="URL"> 
        <URL>
            <xsl:apply-templates/>
        </URL>
    </xsl:template>

    <xsl:template match="Journal-Summary"> 
        <Journal-Summary>
            <xsl:apply-templates/>
        </Journal-Summary>
    </xsl:template>
    
    <xsl:template match="Institution-Name"> 
        <Institution-Name>
            <xsl:apply-templates/>
        </Institution-Name>
    </xsl:template>
    
    
    <xsl:template match="Journal-Data"> 
        <xsl:apply-templates select="Journal">
            <xsl:sort select="(Institution-Name)" order="descending" />
        </xsl:apply-templates>
    </xsl:template>

</xsl:stylesheet>