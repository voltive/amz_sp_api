# AmzSpApi::VendorDirectFulfillmentPaymentsV1::VendorInvoiceApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_invoice**](VendorInvoiceApi.md#submit_invoice) | **POST** /vendor/directFulfillment/payments/v1/invoices | 

# **submit_invoice**
> SubmitInvoiceResponse submit_invoice(body)



Submits one or more invoices for a vendor's direct fulfillment orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor_direct_fulfillment_payments_v1'

api_instance = AmzSpApi::VendorDirectFulfillmentPaymentsV1::VendorInvoiceApi.new
body = AmzSpApi::VendorDirectFulfillmentPaymentsV1::SubmitInvoiceRequest.new # SubmitInvoiceRequest | The request body containing one or more invoices for vendor orders.


begin
  result = api_instance.submit_invoice(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentPaymentsV1::ApiError => e
  puts "Exception when calling VendorInvoiceApi->submit_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitInvoiceRequest**](SubmitInvoiceRequest.md)| The request body containing one or more invoices for vendor orders. | 

### Return type

[**SubmitInvoiceResponse**](SubmitInvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



