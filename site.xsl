<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>AZUGA WOOD</title>
                <link rel="stylesheet" type="text/css" href="site.css"/>
            </head>
            <body background="{/site/pages/page[@id='cabane']/images/image/@src}">
                <div id="content">
                    <h1><xsl:value-of select="/site/main/title"/></h1>
                    <p class="description"><xsl:value-of select="/site/main/description"/></p>
                    <div class="buttons">
                        <xsl:for-each select="/site/pages/page">
                            <button onclick="window.location.href='{substring-after(@id, '#')}.html'">
                                <xsl:value-of select="title"/>
                            </button>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
