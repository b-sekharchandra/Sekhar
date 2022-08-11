<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:dp="http://www.datapower.com/extensions"
extension-element-prefixes="dp"
version="1.0">
<xsl:template match="/">
<xsl:variable name="shipment_id">
<xsl:value-of select="ShipmentID"/>
</xsl:variable>

<xsl:variable name="chandu">
<xsl:value-of select="'select order_id from ORDER_ITEMS where shipment_id= '"/>
<xsl:value-of select="$shipment_id"/>
</xsl:variable>


<xsl:variable name="data">
<dp:sql-execute source="'sqlDB2'" statement="$chandu"/>
</xsl:variable>
<xsl:copy-of select="$data"/>
</xsl:template>
</xsl:stylesheet>