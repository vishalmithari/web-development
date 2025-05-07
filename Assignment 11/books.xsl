<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Library Books</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <h2>Library Books</h2>
        <table border="2">
          <tr bgcolor="skyblue">
            <th>Title</th>
            <th>Authors</th>
            <th>Year</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="library/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td>
                <xsl:for-each select="author">
                  <xsl:value-of select="normalize-space(.)"/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
