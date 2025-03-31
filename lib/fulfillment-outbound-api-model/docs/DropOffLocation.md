# AmzSpApi::FulfillmentOutboundApiModel::DropOffLocation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Specifies the preferred location to leave the package at the destination address. | 
**attributes** | **Hash&lt;String, String&gt;** | Additional information about the drop-off location that can vary depending on the type of drop-off location specified in the &#x60;type&#x60; field. If the &#x60;type&#x60; is set to &#x60;FALLBACK_NEIGHBOR_DELIVERY&#x60;, the &#x60;attributes&#x60; object should include the exact keys &#x60;neighborName&#x60; and &#x60;houseNumber&#x60; to provide the name and house number of the designated neighbor. | [optional] 

