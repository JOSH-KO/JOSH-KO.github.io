<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!--cleans out whitespace-->
    <xsl:strip-space elements="*"/>
    
    <!--formats code to have space-->
    <xsl:output indent="yes" />
  
    <xsl:template match="head" />
    <xsl:template match="script" />
    
  
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul"> 
        <description>
            <xsl:apply-templates/>
        </description>
    </xsl:template>
  
 
</xsl:stylesheet>
    