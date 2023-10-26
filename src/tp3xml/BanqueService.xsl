<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="somme">
		<xsl:value-of select="sum(BS/GetComptes/solde)"></xsl:value-of>
	</xsl:variable>
	<xsl:variable name="somme2">
		<xsl:value-of select="sum(BS/GetComptes[substring(date, 1,4)>2000]/solde)"></xsl:value-of>
	</xsl:variable>
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<head>
				<title>Banque Service</title>
			</head>
			<body>
				<table border="2">
					<tr>
						<th>code</th>
						<th>solde</th>
						<th>date de creation</th>
					</tr>
					<xsl:for-each select="BS/GetComptes">
						<tr>
							<td><xsl:value-of select="code"></xsl:value-of></td>
							<td><xsl:value-of select="solde"></xsl:value-of></td>
							<td><xsl:value-of select="date"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</table>
				
				<br></br>
				<br></br>
				
				<p>la somme est: 
					<xsl:value-of select="$somme"></xsl:value-of>
				</p>
				
				<br></br>
				<br></br>
				
				<table border="2">
					<tr>
						<th>code</th>
						<th>solde</th>
						<th>date de creation</th>
					</tr>
					<xsl:for-each select="BS/GetComptes[substring(date, 1,4)>2000]">
						<tr>
							<td><xsl:value-of select="code"></xsl:value-of></td>
							<td><xsl:value-of select="solde"></xsl:value-of></td>
							<td><xsl:value-of select="date"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</table>
				
				<br></br>
				<br></br>
				
				<p>la somme est: 
					<xsl:value-of select="$somme2"></xsl:value-of>
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>