<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" method="text" version="1.0" indent="yes"/>
    <xsl:template match="fcpxml">
        <xsl:text>Season,</xsl:text>
        <xsl:text>Event,</xsl:text>
        <xsl:text>Week,</xsl:text>
        <xsl:text>Region,</xsl:text>
        <xsl:text>Teams,</xsl:text>
        <xsl:text>Item,</xsl:text>
        <xsl:text>Notes [Description],</xsl:text>
        <xsl:text>Pro Players</xsl:text>
        <xsl:text>Shoutcasters,</xsl:text>
        <xsl:text>Crowd?,</xsl:text>
        <xsl:text>Location,</xsl:text>
        <xsl:text>Source,</xsl:text>
        <xsl:text>Editor,</xsl:text>
        <xsl:text>Producer,</xsl:text>
        <xsl:text>Codec</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="resources/asset">
            <xsl:variable name="assetname"><xsl:value-of select="@name"/></xsl:variable>
            <xsl:text>"</xsl:text>
            <xsl:text>N/a</xsl:text>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.event']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.week']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.region']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.teams']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.item']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="../../library/event/clip[@name=$assetname]/note"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='ccom.apple.proapps.custom.pro%20players']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.shoutcasters']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.crowd']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="../../library/event/clip/metadata/md[@key='com.apple.proapps.studio.metadataLocation']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.source']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.editor']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.producer']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:for-each select="metadata/md[@key='com.apple.proapps.spotlight.kMDItemCodecs']/array/string">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each>
            <xsl:text>"</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
