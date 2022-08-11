<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:stor="http://www.eidikointernal.com/StoreOrders/">
				<soapenv:Header/>
    <xsl:template match="/">
	
        <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
            <soap:Body>
                <stor:getOrdersByShipmentId>
<ShipmentOrders>
				<xsl:for-each select="sql/row/column">
				
					<OrderID>
		 
						<xsl:value-of select="value"/>
					</OrderID>
					
				</xsl:for-each>
</ShipmentOrders>

<!--<xsl:value-of select="sql/row/column/value"/>-->


				</stor:getOrdersByShipmentId>
            </soap:Body>
        </soap:Envelope>            
    </xsl:template>
</xsl:stylesheet>