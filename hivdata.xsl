<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <xsl:template match="/">
          <data>
                <xsl:call-template name="hivdata"/>
            </data>
    </xsl:template>
    
    <xsl:template name="hivdata">
        <xsl:for-each select="/Data/Fact">
            <data>
                <country> 
                    <xsl:value-of select="COUNTRY"/> 
                </country>
                <year> 
                    <xsl:value-of select="YEAR"/> 
                </year>
                <display> 
                    <xsl:value-of select="Display"/> 
                </display>
            </data>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
