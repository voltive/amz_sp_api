# AmzSpApi::VendorDirectFulfillmentShippingV1::PackedItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **Integer** | Item Sequence Number for the item. This must be the same value as sent in the order for a given item. | 
**buyer_product_identifier** | **String** | Buyer&#x27;s Standard Identification Number (ASIN) of an item. Either buyerProductIdentifier or vendorProductIdentifier is required. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification of the item. Should be the same as was sent in the Purchase Order, like SKU Number. | [optional] 
**packed_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 

