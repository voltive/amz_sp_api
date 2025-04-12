# AmzSpApi::AmazonWarehousingAndDistributionModel20240509::ShipmentListing

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_token** | **String** | A token that is used to retrieve the next page of results. The response includes &#x60;nextToken&#x60; when the number of results exceeds the specified &#x60;maxResults&#x60; value. To get the next page of results, call the operation with this token and include the same arguments as the call that produced the token. To get a complete list, call this operation until &#x60;nextToken&#x60; is null. Note that this operation can return empty pages. | [optional] 
**shipments** | [**Array&lt;InboundShipmentSummary&gt;**](InboundShipmentSummary.md) | List of inbound shipment summaries. | [optional] 

