<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="blue">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Price</th>
    </tr>
    <xsl:for-each select="catalog/cd">
      <!--<xsl:for-each select="catalog/cd[price &lt; 10]"> precio menor de 10-->
      <!--<xsl:for-each select="catalog/cd[country='USA']"> Filtrar artistas USA-->
      <!--<xsl:sort select='artist'/> Ordenador por artista--> 

    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="price"/></td>
      <td>
        <xsl:choose>
            <xsl:when test="price &lt; 10">
              <span style="color:red">&#128308;</span>
            </xsl:when>
            <xsl:otherwise>
              <span style="color:green">&#128994;</span>
            </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
