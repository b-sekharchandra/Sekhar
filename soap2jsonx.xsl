<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xsi:schemaLocation="http://www.datapower.com/schemas/json jsonx.xsd"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:json="http://www.ibm.com/xmlns/prod/2009/jsonx"
xmlns:dp="http://www.datapower.com/extensions"
extension-element-prefixes="dp"
exclude-result-prefixes="xs"
version="2.0">

<xsl:template match="/">
<json:object>
<json:string name="ShipmentID">
<xsl:value-of select="//ShipmentID"/>
</json:string>
</json:object>
</xsl:template>
</xsl:stylesheet>