<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Examen anterior</title>
            </head>
            <body>
                <h1>Esquema de los ciclos y sus asignaturas</h1>

                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <li><xsl:value-of select="@id"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
