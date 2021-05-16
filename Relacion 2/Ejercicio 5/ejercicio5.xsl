<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 5</title>
            </head>

            <body>
                <ul>
                    <xsl:for-each select="catalogo/artistas/artista">
                    <!-- PARA COMPARAR "STRING/TEXTO" SE TIENE QUE PONER EL TEXTO ENTRE COMILLAS SIMPLES -->
                        <xsl:if test="nacionalidad = 'España'"> 
                            <li><xsl:value-of select="nombre"/></li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
