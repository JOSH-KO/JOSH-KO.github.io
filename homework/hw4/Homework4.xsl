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
    <xsl:template match="h1" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[1]" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[2]" />
    <xsl:template match="/html/body[2]/form[1]/div[2]/main[1]/div[2]" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/header" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/div[1]/h3[1]" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/div[1]/div[1]/a[1]" />
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[2]/div[1]/div[1]" /> 
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[4]" /> 
     
     
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul"> 
        <Journal-Data>
            <xsl:apply-templates/>
        </Journal-Data>
    </xsl:template>
  
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul/li">
        <Journal>
            <xsl:apply-templates/>
        </Journal>
    </xsl:template>
  
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul/li/p[1]/a"> 
        <Journal-Name>
            <xsl:apply-templates/>
        </Journal-Name>
        <URL>
            <xsl:value-of select="@href"/>
        </URL>
    </xsl:template>
   
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul/li/p[1]/span">
       <Institution-Name>
        <xsl:value-of select="substring-after(., ' - ')" />
       </Institution-Name>
    </xsl:template>
    
    <xsl:template match="/html/body[1]/form[1]/div[2]/main[1]/div[3]/div[1]/div[2]/ul/li/p[2]"> 
        <Journal-Summary>
            <xsl:apply-templates />
        </Journal-Summary>
    </xsl:template>
    
   
    
 
</xsl:stylesheet>
    