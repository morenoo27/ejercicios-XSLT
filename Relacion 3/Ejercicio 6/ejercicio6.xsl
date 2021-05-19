<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 6</title>

                <style>
                    .green{color:green}
                    .blue{color:blue}
                    .red{color:red}
                </style>
            </head>

            <body>
                <table border="1">
                    <xsl:for-each select="tienda/producto">
                        <xsl:sort select="articulo" />
                        <tr>
                            <td>
                                <xsl:value-of select="codigo" />
                            </td>
                            <xsl:choose>
                                <xsl:when test="100 >= @precio">
                                    <td>
                                        <span class="green">
                                            <xsl:value-of select="articulo" />
                                        </span>
                                    </td>
                                </xsl:when>

                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="1000 >= @precio">
                                            <td>
                                                <span class="blue">
                                                    <xsl:value-of select="articulo" />
                                                </span>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <span class="red">
                                                    <xsl:value-of select="articulo" />
                                                </span>
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>

                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:value-of select="cantidad" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
