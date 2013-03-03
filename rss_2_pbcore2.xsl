<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:media="http://search.yahoo.com/mrss/" xsi:schemaLocation="http://www.pbcore.org/PBCore/PBCoreNamespace.html http://pbcore.org/xsd/pbcore-2.0.xsd" exclude-result-prefixes="media">
<xsl:output encoding="UTF-8" method="xml" version="1.0" indent="yes"/>
<!-- 
@name rss2pbcore.xsl
@author dave rice dave@dericed.com
-->
	<xsl:template match="rss/channel">
		<pbcoreCollection>
			<xsl:attribute name="collectionTitle"><xsl:value-of select="title"/></xsl:attribute>
			<xsl:attribute name="collectionDescription"><xsl:value-of select="description"/></xsl:attribute>
			<xsl:attribute name="collectionRef"><xsl:value-of select="link"/></xsl:attribute>
			<xsl:attribute name="collectionDate"><xsl:value-of select="lastBuildDate"/></xsl:attribute>
			<xsl:for-each select="item">
				<pbcoreDescriptionDocument>
					<xsl:if test="string-length(pubDate)>0">
						<pbcoreAssetDate>
							<xsl:attribute name="dateType"><xsl:text>atom.pubDate</xsl:text></xsl:attribute>
							<xsl:value-of select="pubDate"/>
						</pbcoreAssetDate>
					</xsl:if>
					<xsl:if test="string-length(guid)>0">
						<pbcoreIdentifier>
							<xsl:attribute name="source"><xsl:text>atom.guid</xsl:text></xsl:attribute>
							<xsl:value-of select="guid"/>
						</pbcoreIdentifier>
					</xsl:if>
					<xsl:if test="string-length(link)>0">
						<pbcoreIdentifier>
							<xsl:attribute name="source"><xsl:text>atom.link</xsl:text></xsl:attribute>
							<xsl:value-of select="link"/>
						</pbcoreIdentifier>
					</xsl:if>
					<xsl:if test="string-length(link)=0 and string-length(guid)=0">
						<pbcoreIdentifier>
							<xsl:attribute name="source"><xsl:text>None</xsl:text></xsl:attribute>
							<xsl:text>No Identifier Available</xsl:text>
						</pbcoreIdentifier>
					</xsl:if>
					<pbcoreTitle>
						<xsl:choose>
							<xsl:when test="string-length(normalize-space(title))>0">
									<xsl:value-of select="normalize-space(title)"/>
							</xsl:when>
							<xsl:otherwise>
									<xsl:text>No Title Available</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</pbcoreTitle>
					<xsl:for-each select="category">
						<pbcoreSubject>
							<xsl:if test="contains(.,'[') and contains(substring-after(.,'['),']')">
								<xsl:attribute name="source"><xsl:value-of select="substring-before(substring-after(.,'['),']')"/></xsl:attribute>
							</xsl:if>
							<xsl:value-of select="normalize-space(substring-before(.,'['))"/>
						</pbcoreSubject>
					</xsl:for-each>
					<pbcoreDescription>
						<xsl:choose>
							<xsl:when test="string-length(normalize-space(description))>0">
									<xsl:value-of select="normalize-space(description)"/>
							</xsl:when>
							<xsl:otherwise>
									<xsl:text>No Description Available</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</pbcoreDescription>
					<xsl:if test="string-length(media:content/@url)>0">
						<pbcoreInstantiation>
							<instantiationIdentifier>
								<xsl:attribute name="source">URL</xsl:attribute>
								<xsl:value-of select="media:content/@url"/>
							</instantiationIdentifier>
							<instantiationDigital><xsl:value-of select="media:content/@type"/></instantiationDigital>
							<instantiationLocation><xsl:value-of select="media:content/@url"/></instantiationLocation>
						</pbcoreInstantiation>
					</xsl:if>
				</pbcoreDescriptionDocument>
			</xsl:for-each>
		</pbcoreCollection>
	</xsl:template>
</xsl:stylesheet>
