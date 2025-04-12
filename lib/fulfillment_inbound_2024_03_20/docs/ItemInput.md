# AmzSpApi::FulfillmentInbound20240320::ItemInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiration** | **String** | The expiration date of the MSKU. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format with pattern &#x60;YYYY-MM-DD&#x60;. Items with the same MSKU but different expiration dates cannot go into the same box. | [optional] 
**label_owner** | [**LabelOwner**](LabelOwner.md) |  | 
**manufacturing_lot_code** | **String** | The manufacturing lot code. | [optional] 
**msku** | **String** | The merchant SKU, a merchant-supplied identifier of a specific SKU. | 
**prep_owner** | [**PrepOwner**](PrepOwner.md) |  | 
**quantity** | **Integer** | The number of units of the specified MSKU that will be shipped. | 

