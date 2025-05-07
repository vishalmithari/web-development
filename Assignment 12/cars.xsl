<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Car List</title>
        <link rel="stylesheet" type="text/css" href="cars.css"/>
      </head>
      <body>
        <h2>Car List</h2>
        <table border="2">
          <tr bgcolor="skyblue">
            <th>Model</th>
            <th>Manufacturer</th>
            <th>Year</th>
            <th>Price</th>
            <th>CC</th>
          </tr>
          <xsl:for-each select="cars/car">
            <tr>
              <td><xsl:value-of select="model"/></td>
              <td><xsl:value-of select="manufacturer"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="cc"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
