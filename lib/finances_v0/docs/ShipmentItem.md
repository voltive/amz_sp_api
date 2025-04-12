# AmzSpApi::FinancesV0::ShipmentItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seller_sku** | **String** | The seller SKU of the item. The seller SKU is qualified by the seller&#x27;s seller ID, which is included with every call to the Selling Partner API. | [optional] 
**order_item_id** | **String** | An Amazon-defined order item identifier. | [optional] 
**order_adjustment_item_id** | **String** | An Amazon-defined order adjustment identifier defined for refunds, guarantee claims, and chargeback events. | [optional] 
**quantity_shipped** | **Integer** | The number of items shipped. | [optional] 
**item_charge_list** | [**ChargeComponentList**](ChargeComponentList.md) |  | [optional] 
**item_charge_adjustment_list** | [**ChargeComponentList**](ChargeComponentList.md) |  | [optional] 
**item_fee_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**item_fee_adjustment_list** | [**FeeComponentList**](FeeComponentList.md) |  | [optional] 
**item_tax_withheld_list** | [**TaxWithheldComponentList**](TaxWithheldComponentList.md) |  | [optional] 
**promotion_list** | [**PromotionList**](PromotionList.md) |  | [optional] 
**promotion_adjustment_list** | [**PromotionList**](PromotionList.md) |  | [optional] 
**cost_of_points_granted** | [**Currency**](Currency.md) |  | [optional] 
**cost_of_points_returned** | [**Currency**](Currency.md) |  | [optional] 

