<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 2</title>
            </head>

            <body>
                <ul>
                    <xsl:for-each select="tienda/producto">
                        <li><xsl:value-of select="articulo"/></li>
                    </xsl:for-each>
                </ul>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
