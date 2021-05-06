<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 6</title>
            </head>

            <body>
                <h1><xsl:value-of select="ies/@nombre" /></h1>
                <p>
                    Pagina web:
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ies/@web" />
                        </xsl:attribute>

                        <xsl:value-of select="ies/@web" />
                    </a>
                </p>

                <table border="1">
                    <xsl:apply-templates />
                </table>
                
            </body>

        </html>

    </xsl:template>

    <xsl:template match="ciclo">
        <tr><th><xsl:value-of select="nombre" /></th></tr>
    </xsl:template>

</xsl:stylesheet>