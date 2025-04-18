# AmzSpApi::OrdersV0::OrderBuyerInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_order_id** | **String** | An Amazon-defined order identifier, in 3-7-7 format. | 
**buyer_email** | **String** | The anonymized email address of the buyer. | [optional] 
**buyer_name** | **String** | The buyer name or the recipient name. | [optional] 
**buyer_county** | **String** | The county of the buyer.  **Note**: This attribute is only available in the Brazil marketplace. | [optional] 
**buyer_tax_info** | [**BuyerTaxInfo**](BuyerTaxInfo.md) |  | [optional] 
**purchase_order_number** | **String** | The purchase order (PO) number entered by the buyer at checkout. Only returned for orders where the buyer entered a PO number at checkout. | [optional] 

