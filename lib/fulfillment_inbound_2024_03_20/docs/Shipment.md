# AmzSpApi::FulfillmentInbound20240320::Shipment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amazon_reference_id** | **String** | A unique identifier created by Amazon that identifies this Amazon-partnered, Less Than Truckload/Full Truckload (LTL/FTL) shipment. | [optional] 
**contact_information** | [**ContactInformation**](ContactInformation.md) |  | [optional] 
**dates** | [**Dates**](Dates.md) |  | [optional] 
**destination** | [**ShipmentDestination**](ShipmentDestination.md) |  | 
**freight_information** | [**FreightInformation**](FreightInformation.md) |  | [optional] 
**name** | **String** | The name of the shipment. | [optional] 
**placement_option_id** | **String** | The identifier of a placement option. A placement option represents the shipment splits and destinations of SKUs. | 
**selected_delivery_window** | [**SelectedDeliveryWindow**](SelectedDeliveryWindow.md) |  | [optional] 
**selected_transportation_option_id** | **String** | Identifier of a transportation option. A transportation option represent one option for how to send a shipment. | [optional] 
**self_ship_appointment_details** | [**Array&lt;SelfShipAppointmentDetails&gt;**](SelfShipAppointmentDetails.md) | List of self ship appointment details. | [optional] 
**shipment_confirmation_id** | **String** | The confirmed shipment ID which shows up on labels (for example, &#x60;FBA1234ABCD&#x60;). | [optional] 
**shipment_id** | **String** | Identifier of a shipment. A shipment contains the boxes and units being inbounded. | 
**source** | [**ShipmentSource**](ShipmentSource.md) |  | 
**status** | **String** | The status of a shipment. The state of the shipment will typically start as &#x60;UNCONFIRMED&#x60;, then transition to &#x60;WORKING&#x60; after a placement option has been confirmed, and then to &#x60;READY_TO_SHIP&#x60; once labels are generated.  Possible values: &#x60;ABANDONED&#x60;, &#x60;CANCELLED&#x60;, &#x60;CHECKED_IN&#x60;, &#x60;CLOSED&#x60;, &#x60;DELETED&#x60;, &#x60;DELIVERED&#x60;, &#x60;IN_TRANSIT&#x60;, &#x60;MIXED&#x60;, &#x60;READY_TO_SHIP&#x60;, &#x60;RECEIVING&#x60;, &#x60;SHIPPED&#x60;, &#x60;UNCONFIRMED&#x60;, &#x60;WORKING&#x60; | [optional] 
**tracking_details** | [**TrackingDetails**](TrackingDetails.md) |  | [optional] 

