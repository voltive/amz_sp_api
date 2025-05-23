# AmzSpApi::ShipmentInvoicingV0::ShipmentInvoiceApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_status**](ShipmentInvoiceApi.md#get_invoice_status) | **GET** /fba/outbound/brazil/v0/shipments/{shipmentId}/invoice/status | 
[**get_shipment_details**](ShipmentInvoiceApi.md#get_shipment_details) | **GET** /fba/outbound/brazil/v0/shipments/{shipmentId} | 
[**submit_invoice**](ShipmentInvoiceApi.md#submit_invoice) | **POST** /fba/outbound/brazil/v0/shipments/{shipmentId}/invoice | 

# **get_invoice_status**
> GetInvoiceStatusResponse get_invoice_status(shipment_id)



Returns the invoice status for the shipment you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1.133 | 25 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipment_invoicing_v0'

api_instance = AmzSpApi::ShipmentInvoicingV0::ShipmentInvoiceApi.new
shipment_id = 'shipment_id_example' # String | The shipment identifier for the shipment.


begin
  result = api_instance.get_invoice_status(shipment_id)
  p result
rescue AmzSpApi::ShipmentInvoicingV0::ApiError => e
  puts "Exception when calling ShipmentInvoiceApi->get_invoice_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The shipment identifier for the shipment. | 

### Return type

[**GetInvoiceStatusResponse**](GetInvoiceStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_shipment_details**
> GetShipmentDetailsResponse get_shipment_details(shipment_id)



Returns the shipment details required to issue an invoice for the specified shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1.133 | 25 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipment_invoicing_v0'

api_instance = AmzSpApi::ShipmentInvoicingV0::ShipmentInvoiceApi.new
shipment_id = 'shipment_id_example' # String | The identifier for the shipment. Get this value from the FBAOutboundShipmentStatus notification. For information about subscribing to notifications, see the [Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).


begin
  result = api_instance.get_shipment_details(shipment_id)
  p result
rescue AmzSpApi::ShipmentInvoicingV0::ApiError => e
  puts "Exception when calling ShipmentInvoiceApi->get_shipment_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| The identifier for the shipment. Get this value from the FBAOutboundShipmentStatus notification. For information about subscribing to notifications, see the [Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide). | 

### Return type

[**GetShipmentDetailsResponse**](GetShipmentDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_invoice**
> SubmitInvoiceResponse submit_invoice(bodyshipment_id)



Submits a shipment invoice document for a given shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1.133 | 25 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'shipment_invoicing_v0'

api_instance = AmzSpApi::ShipmentInvoicingV0::ShipmentInvoiceApi.new
body = AmzSpApi::ShipmentInvoicingV0::SubmitInvoiceRequest.new # SubmitInvoiceRequest | 
shipment_id = 'shipment_id_example' # String | The identifier for the shipment.


begin
  result = api_instance.submit_invoice(bodyshipment_id)
  p result
rescue AmzSpApi::ShipmentInvoicingV0::ApiError => e
  puts "Exception when calling ShipmentInvoiceApi->submit_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitInvoiceRequest**](SubmitInvoiceRequest.md)|  | 
 **shipment_id** | **String**| The identifier for the shipment. | 

### Return type

[**SubmitInvoiceResponse**](SubmitInvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



