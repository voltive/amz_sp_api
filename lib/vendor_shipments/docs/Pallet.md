# AmzSpApi::VendorShipments::Pallet

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pallet_identifiers** | [**Array&lt;ContainerIdentification&gt;**](ContainerIdentification.md) | A list of pallet identifiers. | 
**tier** | **Integer** | Number of layers per pallet. Only applicable to container type Pallet. | [optional] 
**block** | **Integer** | Number of cartons per layer on the pallet. Only applicable to container type Pallet. | [optional] 
**dimensions** | [**Dimensions**](Dimensions.md) |  | [optional] 
**weight** | [**Weight**](Weight.md) |  | [optional] 
**carton_reference_details** | [**CartonReferenceDetails**](CartonReferenceDetails.md) |  | [optional] 
**items** | [**Array&lt;ContainerItem&gt;**](ContainerItem.md) | A list of container item details. | [optional] 

