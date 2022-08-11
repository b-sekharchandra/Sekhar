<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ord="http://www.eidikointernal.com/StoreOrders/">
				<soapenv:Header/>
    <xsl:template match="/">
	
        <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
            <soap:Body>
                <ord:getOrdersByShipmentIDResponse>
				      
		                  <xsl:for-each select="sql/row">
							<ShipmentOrders>
					               <xsl:if test="column/name='ORDER_ID'">
								   <OrderID>
						                <xsl:value-of select="column[1]/value"/>
										</OrderID>
					                </xsl:if>
					               <xsl:if test="column/name='QUANTITY'">
								   <Quantity>
						                  <xsl:value-of select="column[2]/value"/>
										  </Quantity>
					               </xsl:if>
							</ShipmentOrders>
			           </xsl:for-each>
				
	                  				
           </ord:getOrdersByShipmentIDResponse>
            </soap:Body>
        </soap:Envelope>            
    </xsl:template>
</xsl:stylesheet>