<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:px="http://www.daisy.org/ns/pipeline/data"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs px"
    version="2.0">
    
    <xsl:output indent="yes" doctype-public="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" method="xhtml"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Pipeline 2 Jobs</title>
            </head>
            <body>
                <h1>Pipeline 2 Jobs</h1>
                <xsl:choose>
                    <xsl:when test="empty(*/px:job)">
                        <p><em>No jobs found.</em></p>
                    </xsl:when>
                    <xsl:otherwise>
                        <ul>
                        <xsl:apply-templates select="*/px:job"/>
                        </ul>
                    </xsl:otherwise>
                </xsl:choose>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="px:job">
        <li>Job <xsl:value-of select="@id"/>: <xsl:value-of select="@status"/></li>
    </xsl:template>
</xsl:stylesheet>