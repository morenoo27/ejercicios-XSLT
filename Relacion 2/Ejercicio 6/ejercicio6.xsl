<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 6</title>

                <style>
                    .red{color:red}
                    .green{color:green}
                </style>
            </head>

            <body>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                    </tr>

                    <xsl:for-each select="catalogo/cds/cd">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="año > 2000">
                                    <td>
                                        <span class="green">
                                            <xsl:value-of select="titulo" />
                                        </span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <span class="red">
                                        <xsl:value-of select="titulo" />
                                        </span>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
