# xsl4metadata
various xsl to do this or that

I wrote this for a very particular use case a while ago. It may or may not (probably) be useful.

# How to

```xsltproc fcpx2csv.xsl TestXMLFile.fcpxml > TestXMLFile.csv```

to use the fcpx2csv.xsl file to translate the input, TestXMLFile.fcpxml, into the output, TestXMLFile.csv. I think xsltproc is pre-installed in Mac OS so it should be fairly portable.
I added quotes around each value expressed. This is only partially done since much of the csv example didn't appear to line up with anything in the xml. You'll see a few of the xpath mappings include "???" since I couldn't predict what the xpath would be.
