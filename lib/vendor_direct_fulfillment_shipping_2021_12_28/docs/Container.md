# AmzSpApi::VendorDirectFulfillmentShipping20211228::Container

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_type** | **String** | The type of container. | 
**container_identifier** | **String** | The container identifier. | 
**tracking_number** | **String** | The tracking number. | [optional] 
**manifest_id** | **String** | The manifest identifier. | [optional] 
**manifest_date** | **String** | The date of the manifest. | [optional] 
**ship_method** | **String** | The shipment method. This property is required when calling the &#x60;submitShipmentConfirmations&#x60; operation, and optional otherwise. | [optional] 
**scac_code** | **String** | SCAC code required for NA VOC vendors only. | [optional] 
**carrier** | **String** | Carrier required for EU VOC vendors only. | [optional] 
**container_sequence_number** | **Integer** | An integer that must be submitted for multi-box shipments only, where one item may come in separate packages. | [optional] 
**dimensions** | [**Dimensions**](Dimensions.md) |  | [optional] 
**weight** | [**Weight**](Weight.md) |  | 
**packed_items** | [**Array&lt;PackedItem&gt;**](PackedItem.md) | A list of packed items. | 

