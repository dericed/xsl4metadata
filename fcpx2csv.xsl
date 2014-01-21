<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" method="text" version="1.0" indent="yes"/>
    <xsl:template match="fcpxml">
        <xsl:text>Identifier,</xsl:text>
        <xsl:text>Archive Collection,</xsl:text>
        <xsl:text>Title,</xsl:text>
        <xsl:text>Title ID,</xsl:text>
        <xsl:text>Author Name,</xsl:text>
        <xsl:text>Author Name 2,</xsl:text>
        <xsl:text>Author Name 3,</xsl:text>
        <xsl:text>Author Name 4,</xsl:text>
        <xsl:text>Author Name 5,</xsl:text>
        <xsl:text>Description,</xsl:text>
        <xsl:text>Date,</xsl:text>
        <xsl:text>Date Digital,</xsl:text>
        <xsl:text>Type,</xsl:text>
        <xsl:text>Format,</xsl:text>
        <xsl:text>Format Master,</xsl:text>
        <xsl:text>File Size,</xsl:text>
        <xsl:text>Duration,</xsl:text>
        <xsl:text>Notes Technical,</xsl:text>
        <xsl:text>Original Medium,</xsl:text>
        <xsl:text>Physical Dimensions,</xsl:text>
        <xsl:text>Notes Content,</xsl:text>
        <xsl:text>Physical Number,</xsl:text>
        <xsl:text>Physical Assessment,</xsl:text>
        <xsl:text>Treatment,</xsl:text>
        <xsl:text>Source,</xsl:text>
        <xsl:text>Box and Folder,</xsl:text>
        <xsl:text>Related Resource,</xsl:text>
        <xsl:text>Transcription,</xsl:text>
        <xsl:text>Master File,</xsl:text>
        <xsl:text>Rights,</xsl:text>
        <xsl:text>Coverage,</xsl:text>
        <xsl:text>Contributor,</xsl:text>
        <xsl:text>Language,</xsl:text>
        <xsl:text>Publisher,</xsl:text>
        <xsl:text>Digitization Specifications,</xsl:text>
        <xsl:text>Technician,</xsl:text>
        <xsl:text>MD5,</xsl:text>
        <xsl:text>Subject,</xsl:text>
        <xsl:text>Subject 2,</xsl:text>
        <xsl:text>Subject 3,</xsl:text>
        <xsl:text>Subject 4,</xsl:text>
        <xsl:text>Subject 5,</xsl:text>
        <xsl:text>Subject 6,</xsl:text>
        <xsl:text>Subject 7 ,</xsl:text>
        <xsl:text>Subject 8,</xsl:text>
        <xsl:text>Subject 9,</xsl:text>
        <xsl:text>Subject 10,</xsl:text>
        <xsl:text>Subject 11,</xsl:text>
        <xsl:text>Subject 12,</xsl:text>
        <xsl:text>Subject 13,</xsl:text>
        <xsl:text>Subject 14,</xsl:text>
        <xsl:text>Subject 15,</xsl:text>
        <xsl:text>Subject 16,</xsl:text>
        <xsl:text>Subject 17,</xsl:text>
        <xsl:text>Subject 18,</xsl:text>
        <xsl:text>Subject 19,</xsl:text>
        <xsl:text>Subject 20</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="project/resources/asset">
            <xsl:text>"</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.spotlight.kMDItemFSName']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='ARCHIVECOLLECTION???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.title%20of%20event']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='TITLE_ID???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.author%20name']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.author%20name%202']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.author%20name%203']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.author%20name%204']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.custom.author%20name%205']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='DESCRIPTION???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='DATE???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='DATE_DIGITAL???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='TYPE???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.spotlight.kMDItemKind']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='FORMAT_MASTER???']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='com.apple.proapps.spotlight.kMDItemFSSize']/@value"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="@duration"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="metadata/md[@key='NOTE_TECHNICAL???']/@value"/>
            <xsl:text>"</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
