# AmzSpApi::VendorDirectFulfillmentShipping20211228::PackedItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence_number** | **Integer** | The sequence number of the item. The number must be the same as the order number of the item. | 
**buyer_product_identifier** | **String** | The buyer&#x27;s Amazon Standard Identification Number (ASIN) of an item. Either &#x60;buyerProductIdentifier&#x60; or &#x60;vendorProductIdentifier&#x60; is required. | [optional] 
**piece_number** | **Integer** | The piece number of the item in this container. This is required when the item is split across different containers. | [optional] 
**vendor_product_identifier** | **String** | An item&#x27;s product identifier, which the vendor selects. This identifier should be the same as the identifier, such as a SKU, in the purchase order. | [optional] 
**packed_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 

