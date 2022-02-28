<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		<link rel="stylesheet" href="css/estilos.css" />
		</head>
		<body>
		<h1>Estadísticas de los estadios</h1>
		<table>
			<tr>
				<th>Nombre</th>
				<th>Capacidad</th>
				<th>Dimensiones</th>
                <th>Foto</th>
			</tr>
			<xsl:for-each select="campos/campo">
				<tr>
					<td><xsl:value-of select="nombre"/></td>
					<td><xsl:value-of select="capacidad"/></td>
                    <td><xsl:value-of select="dimensiones"/></td>
                    <td>
                    	<img>
                        	<xsl:attribute name="src">
                            	<xsl:value-of select="foto"/>
                        	</xsl:attribute>
                    	</img>
                    </td>
				</tr>
			</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>