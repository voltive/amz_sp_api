# AmzSpApi::FulfillmentInbound20240320::PlacementOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**discounts** | [**Array&lt;Incentive&gt;**](Incentive.md) | Discount for the offered option. | 
**expiration** | **DateTime** | The expiration date of the placement option. In [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) datetime format with pattern &#x60;yyyy-MM-ddTHH:mm:ss.sssZ&#x60;. | [optional] 
**fees** | [**Array&lt;Incentive&gt;**](Incentive.md) | The fee for the offered option. | 
**placement_option_id** | **String** | The identifier of a placement option. A placement option represents the shipment splits and destinations of SKUs. | 
**shipment_ids** | **Array&lt;String&gt;** | Shipment ids. | 
**status** | **String** | The status of a placement option. Possible values: &#x60;OFFERED&#x60;, &#x60;ACCEPTED&#x60;, &#x60;EXPIRED&#x60;. | 

