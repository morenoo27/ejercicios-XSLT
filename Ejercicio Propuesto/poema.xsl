<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>

            <head>
                <title>Transformacion 1</title>
            </head>

            <body>
                <h2>Índice</h2>
                <!-- INDICE SUPERIOR ORDENADO ASCENDENTE POR TITULO -->
                <p>
                    <xsl:for-each select="antologia/poema">
                        <xsl:sort select="titulo" />
                        <a><xsl:attribute name="href">#<xsl:value-of select="@añodepublicacion" /></xsl:attribute><xsl:value-of select="titulo" /></a>
                        <br />
                    </xsl:for-each>
                </p>

                <xsl:for-each select="antologia/poema">
                    <xsl:sort select="autor/apellido" order="descending" />
                    <h4>
                        <xsl:value-of select="autor/apellido" />

                        <!-- FILTRADO PARA PONER EL NOMBRE (SI ESQUE TIENE) -->
                        <xsl:if test="autor/nombre != ''">
                            <xsl:text>, </xsl:text>
                            <xsl:value-of select="autor/nombre" />
                        </xsl:if>
                    </h4>

                    <h2>
                        <!-- PONEMOS EL ID DE CADA UNO DE LOS POEMAS -->
                        <xsl:attribute name="id">
                            <xsl:value-of select="@añodepublicacion" />
                        </xsl:attribute>

                        <!-- TITULO -->
                        <xsl:value-of select="titulo" />
                    </h2>

                    <!-- SUBTITULO (SI TIENE) -->
                    <xsl:if test="subtitulo != ''">
                        <h5>
                            <xsl:value-of select="titulo" />
                        </h5>
                    </xsl:if>

                    <!-- POR CADA ESTROFA, UN PARRAFO CON LOS -->
                    <xsl:for-each select="estrofa">
                        <p>
                            
                            <xsl:for-each select="verso">
                                <xsl:value-of select="verso" />    <br />
                            </xsl:for-each>
                        </p>
                    </xsl:for-each>

                </xsl:for-each>

            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>