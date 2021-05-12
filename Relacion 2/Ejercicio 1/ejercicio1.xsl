<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Ejercicio 1</title>
            </head>

            <body>
                <table border="1">
                    <tr>
                        <th>Titulo</th>
                        <th>Atores</th>
                        <th>Editor / Afiliacion</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="titulo" />
                        <tr>
                            <!-- apartado A -->
                            <xsl:choose>
                                <xsl:when test="precio > 100">
                                    <td><span class="red"><xsl:value-of select="titulo"/> <xsl:text> </xsl:text> (CARO)</span></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="titulo"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            
                            <!-- apartado B -->
                            <td>
                            <xsl:for-each select="autor">
                                <xsl:value-of select="nombre"/> <xsl:text> </xsl:text> <xsl:value-of select="apellido"/><br/>
                            </xsl:for-each>
                            </td>

                            <!-- apartado C -->
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/> <xsl:text> </xsl:text> <xsl:value-of select="apellido"/> <xsl:text> </xsl:text> <xsl:value-of select="afiliacion"/><br/>
                                </xsl:for-each>
                            </td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
