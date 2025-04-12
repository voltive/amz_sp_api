# AmzSpApi::FulfillmentInbound20240320::PackageGroupingInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boxes** | [**Array&lt;BoxInput&gt;**](BoxInput.md) | Box level information being provided. | 
**packing_group_id** | **String** | The ID of the &#x60;packingGroup&#x60; that packages are grouped according to. The &#x60;PackingGroupId&#x60; can only be provided before placement confirmation, and it must belong to the confirmed &#x60;PackingOption&#x60;. One of &#x60;ShipmentId&#x60; or &#x60;PackingGroupId&#x60; must be provided with every request. | [optional] 
**shipment_id** | **String** | The ID of the shipment that packages are grouped according to. The &#x60;ShipmentId&#x60; can only be provided after placement confirmation, and the shipment must belong to the confirmed placement option. One of &#x60;ShipmentId&#x60; or &#x60;PackingGroupId&#x60; must be provided with every request. | [optional] 

