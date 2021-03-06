<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>Film</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/films/film">
                            <tr>
                                <td><xsl:value-of select="titre"/></td>
                                <td><xsl:value-of select="resume"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>