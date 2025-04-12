# AmzSpApi::OrdersV0::OrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asin** | **String** | The item&#x27;s Amazon Standard Identification Number (ASIN). | 
**seller_sku** | **String** | The item&#x27;s seller stock keeping unit (SKU). | [optional] 
**order_item_id** | **String** | An Amazon-defined order item identifier. | 
**associated_items** | [**Array&lt;AssociatedItem&gt;**](AssociatedItem.md) | A list of associated items that a customer has purchased with a product. For example, a tire installation service purchased with tires. | [optional] 
**title** | **String** | The item&#x27;s name. | [optional] 
**quantity_ordered** | **Integer** | The number of items in the order.  | 
**quantity_shipped** | **Integer** | The number of items shipped. | [optional] 
**product_info** | [**ProductInfoDetail**](ProductInfoDetail.md) |  | [optional] 
**points_granted** | [**PointsGrantedDetail**](PointsGrantedDetail.md) |  | [optional] 
**item_price** | [**Money**](Money.md) |  | [optional] 
**shipping_price** | [**Money**](Money.md) |  | [optional] 
**item_tax** | [**Money**](Money.md) |  | [optional] 
**shipping_tax** | [**Money**](Money.md) |  | [optional] 
**shipping_discount** | [**Money**](Money.md) |  | [optional] 
**shipping_discount_tax** | [**Money**](Money.md) |  | [optional] 
**promotion_discount** | [**Money**](Money.md) |  | [optional] 
**promotion_discount_tax** | [**Money**](Money.md) |  | [optional] 
**promotion_ids** | [**PromotionIdList**](PromotionIdList.md) |  | [optional] 
**cod_fee** | [**Money**](Money.md) |  | [optional] 
**cod_fee_discount** | [**Money**](Money.md) |  | [optional] 
**is_gift** | **String** | Indicates whether the item is a gift.  **Possible values**: &#x60;true&#x60; and &#x60;false&#x60;. | [optional] 
**condition_note** | **String** | The condition of the item, as described by the seller. | [optional] 
**condition_id** | **String** | The condition of the item.  **Possible values**: &#x60;New&#x60;, &#x60;Used&#x60;, &#x60;Collectible&#x60;, &#x60;Refurbished&#x60;, &#x60;Preorder&#x60;, and &#x60;Club&#x60;. | [optional] 
**condition_subtype_id** | **String** | The subcondition of the item.  **Possible values**: &#x60;New&#x60;, &#x60;Mint&#x60;, &#x60;Very Good&#x60;, &#x60;Good&#x60;, &#x60;Acceptable&#x60;, &#x60;Poor&#x60;, &#x60;Club&#x60;, &#x60;OEM&#x60;, &#x60;Warranty&#x60;, &#x60;Refurbished Warranty&#x60;, &#x60;Refurbished&#x60;, &#x60;Open Box&#x60;, &#x60;Any&#x60;, and &#x60;Other&#x60;. | [optional] 
**scheduled_delivery_start_date** | **String** | The start date of the scheduled delivery window in the time zone for the order destination. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date time format. | [optional] 
**scheduled_delivery_end_date** | **String** | The end date of the scheduled delivery window in the time zone for the order destination. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date time format. | [optional] 
**price_designation** | **String** | Indicates that the selling price is a special price that is only available for Amazon Business orders. For more information about the Amazon Business Seller Program, refer to the [Amazon Business website](https://www.amazon.com/b2b/info/amazon-business).   **Possible values**: &#x60;BusinessPrice&#x60; | [optional] 
**tax_collection** | [**TaxCollection**](TaxCollection.md) |  | [optional] 
**serial_number_required** | **BOOLEAN** | When true, the product type for this item has a serial number.   Only returned for Amazon Easy Ship orders. | [optional] 
**is_transparency** | **BOOLEAN** | When true, the ASIN is enrolled in Transparency. The Transparency serial number that you must submit is determined by:  **1D or 2D Barcode:** This has a **T** logo. Submit either the 29-character alpha-numeric identifier beginning with **AZ** or **ZA**, or the 38-character Serialized Global Trade Item Number (SGTIN). **2D Barcode SN:** Submit the 7- to 20-character serial number barcode, which likely has the prefix **SN**. The serial number is applied to the same side of the packaging as the GTIN (UPC/EAN/ISBN) barcode. **QR code SN:** Submit the URL that the QR code generates. | [optional] 
**ioss_number** | **String** | The IOSS number of the marketplace. Sellers shipping to the EU from outside the EU must provide this IOSS number to their carrier when Amazon has collected the VAT on the sale. | [optional] 
**store_chain_store_id** | **String** | The store chain store identifier. Linked to a specific store in a store chain. | [optional] 
**deemed_reseller_category** | **String** | The category of deemed reseller. This applies to selling partners that are not based in the EU and is used to help them meet the VAT Deemed Reseller tax laws in the EU and UK. | [optional] 
**buyer_info** | [**ItemBuyerInfo**](ItemBuyerInfo.md) |  | [optional] 
**buyer_requested_cancel** | [**BuyerRequestedCancel**](BuyerRequestedCancel.md) |  | [optional] 
**serial_numbers** | **Array&lt;String&gt;** | A list of serial numbers for electronic products that are shipped to customers. Returned for FBA orders only. | [optional] 
**substitution_preferences** | [**SubstitutionPreferences**](SubstitutionPreferences.md) |  | [optional] 
**measurement** | [**Measurement**](Measurement.md) |  | [optional] 
**shipping_constraints** | [**ShippingConstraints**](ShippingConstraints.md) |  | [optional] 
**amazon_programs** | [**AmazonPrograms**](AmazonPrograms.md) |  | [optional] 
**export_info** | [**ExportInfo**](ExportInfo.md) |  | [optional] 

