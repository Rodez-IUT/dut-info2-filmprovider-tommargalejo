<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>Film provider</title>
            </head>
            <body>
                <h1>Liste des films</h1>
                    <xsl:apply-templates select="film">
                        <xsl:sort select="@annee"/>
                    </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="film">
        <xsl:variable name="idReal" select="@id_realisateur" />
        <table width="60%">
            <tr>
                <td colspan="2">
                    <strong><xsl:value-of select="titre"/></strong>
                    <i> (<xsl:value-of select="/films/realisateur[@id_realisateur = $idReal]/prenom"/>,
                        <xsl:value-of select="/films/realisateur[@id_realisateur = $idReal]/nom"/>)
                    </i>
                </td>
            </tr>
            <tr>
                <xsl:apply-templates select="resume/image"/>
                <td colspan="2">
                    <xsl:value-of select="resume"/>

                </td>
            </tr>
        </table>
        <hr/>
    </xsl:template>

    <xsl:template match="image">
        <td>
            <img src="{@source}"/>
        </td>
    </xsl:template>

</xsl:stylesheet>