<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 4</title>
            </head>

            <body>
                <ol>
                    <xsl:for-each select="bib/libro">
                    <xsl:if test="100 > precio">
                        <li><xsl:value-of select="titulo"></xsl:value-of></li>
                    </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>