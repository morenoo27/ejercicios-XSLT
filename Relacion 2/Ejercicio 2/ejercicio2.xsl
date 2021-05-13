<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 2</title>

                <style>
                    .red{background-color:red}
                </style>
            </head>

            <body>
                <table border="1">
                    <tr>
                        <th>Precio</th>
                        <th>Titulo</th>
                        <th>Año de publicacion</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" />
                        <tr>
                            <!-- apartado A -->
                            <td>
                                <xsl:value-of select="precio" />
                            </td>

                            <!-- apartado B -->
                            <xsl:choose>
                                <xsl:when test="precio > 100">
                                    <td>
                                        <span class="red">
                                            <xsl:value-of select="titulo" />
                                        </span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <!-- apartado C -->
                            <td>
                                <em>
                                    <xsl:value-of select="@año" />
                                </em>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
