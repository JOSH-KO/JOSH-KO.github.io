<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output indent="yes"/>
    
    <xsl:variable name="apostrophe">'</xsl:variable>
    
    <!-- Matches data set's root element, turn into an HTML page that lists all cats. -->
    <xsl:template match="cat-data">
        <html>
            <head>
                <title>Neko Cats Remix</title>
                <link href="https://nhomenda.github.io/css/main.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Neko Cats Remix</h1>
                <ul>
                    <xsl:apply-templates select="cat-record">
                    <xsl:sort select="name" order="ascending"/>
                </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <!-- Creates individual list items for each cat_record with links to their pages; Invokes result-document to create individual pages. -->
    <xsl:template match="cat-record">
        <li>
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="concat('cats/', name, '.html')"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element>
        </li>
        <xsl:result-document href="{concat('cats/', name, '.html')}">
            <html>
                <head>
                    <title><xsl:value-of select="concat(name, $apostrophe, 's Page')"/></title>
                    <link href="https://nhomenda.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                </head>
                <body>
                    <xsl:apply-templates select="name"/>
                    <xsl:apply-templates select="cat-image"/>
                    <xsl:apply-templates select="description"/>
                    <xsl:apply-templates select="power-level"/>
                    <xsl:apply-templates select="personality"/>
                    <xsl:apply-templates select="memento"/>
                    <xsl:apply-templates select="memento-image"/>
                    <!-- <xsl:apply-templates select="xpath3"/> -->
                    <a href="../neko_html.html">Back to list</a>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- add templates that you referenced in the previous template here -->
    
<xsl:template match="name">
    <h1><xsl:apply-templates /></h1>
</xsl:template>
    
<xsl:template match="description">
    <p>Description: <xsl:apply-templates /></p>
</xsl:template>


<xsl:template match="cat-image">
    <h1><xsl:element name="img">
        <xsl:attribute name="src">
            <xsl:apply-templates />
        </xsl:attribute>
    </xsl:element></h1>
</xsl:template>
    
<xsl:template match="power-level">
    <p>Power-level: <xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="personality">
    <p>Personality: <xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="memento">
    <h2>Momento: <xsl:apply-templates /></h2>
</xsl:template>

<xsl:template match="memento-image">
    <h2><xsl:element name="img">
        <xsl:attribute name="src">
            <xsl:apply-templates />
        </xsl:attribute>
    </xsl:element></h2>
</xsl:template>
    
</xsl:stylesheet>