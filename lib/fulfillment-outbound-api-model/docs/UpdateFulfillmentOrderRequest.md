# AmzSpApi::FulfillmentOutboundApiModel::UpdateFulfillmentOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marketplace_id** | **String** | The marketplace the fulfillment order is placed against. | [optional] 
**displayable_order_id** | **String** | A fulfillment order identifier that the seller creates. This value displays as the order identifier in recipient-facing materials such as the outbound shipment packing slip. The value of &#x60;DisplayableOrderId&#x60; should match the order identifier that the seller provides to the recipient. The seller can use the &#x60;SellerFulfillmentOrderId&#x60; for this value or they can specify an alternate value if they want the recipient to reference an alternate order identifier. | [optional] 
**displayable_order_date** | [**Timestamp**](Timestamp.md) |  | [optional] 
**displayable_order_comment** | **String** | Order-specific text that appears in recipient-facing materials such as the outbound shipment packing slip. | [optional] 
**shipping_speed_category** | [**ShippingSpeedCategory**](ShippingSpeedCategory.md) |  | [optional] 
**destination_address** | [**Address**](Address.md) |  | [optional] 
**fulfillment_action** | [**FulfillmentAction**](FulfillmentAction.md) |  | [optional] 
**fulfillment_policy** | [**FulfillmentPolicy**](FulfillmentPolicy.md) |  | [optional] 
**ship_from_country_code** | **String** | The two-character country code for the country from which the fulfillment order ships. Must be in ISO 3166-1 alpha-2 format. | [optional] 
**notification_emails** | [**NotificationEmailList**](NotificationEmailList.md) |  | [optional] 
**feature_constraints** | [**Array&lt;FeatureSettings&gt;**](FeatureSettings.md) | A list of features and their fulfillment policies to apply to the order. | [optional] 
**items** | [**UpdateFulfillmentOrderItemList**](UpdateFulfillmentOrderItemList.md) |  | [optional] 

