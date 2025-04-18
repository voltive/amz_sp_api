# AmzSpApi::VendorDirectFulfillmentOrdersV1::VendorOrdersApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_order**](VendorOrdersApi.md#get_order) | **GET** /vendor/directFulfillment/orders/v1/purchaseOrders/{purchaseOrderNumber} | 
[**get_orders**](VendorOrdersApi.md#get_orders) | **GET** /vendor/directFulfillment/orders/v1/purchaseOrders | 
[**submit_acknowledgement**](VendorOrdersApi.md#submit_acknowledgement) | **POST** /vendor/directFulfillment/orders/v1/acknowledgements | 

# **get_order**
> GetOrderResponse get_order(purchase_order_number)



Returns purchase order information for the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor_direct_fulfillment_orders_v1'

api_instance = AmzSpApi::VendorDirectFulfillmentOrdersV1::VendorOrdersApi.new
purchase_order_number = 'purchase_order_number_example' # String | The order identifier for the purchase order that you want. Formatting Notes: alpha-numeric code.


begin
  result = api_instance.get_order(purchase_order_number)
  p result
rescue AmzSpApi::VendorDirectFulfillmentOrdersV1::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_order_number** | **String**| The order identifier for the purchase order that you want. Formatting Notes: alpha-numeric code. | 

### Return type

[**GetOrderResponse**](GetOrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orders**
> GetOrdersResponse get_orders(created_after, created_before, opts)



Returns a list of purchase orders created during the time frame that you specify. You define the time frame using the createdAfter and createdBefore parameters. You must use both parameters. You can choose to get only the purchase order numbers by setting the includeDetails parameter to false. In that case, the operation returns a list of purchase order numbers. You can then call the getOrder operation to return the details of a specific order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor_direct_fulfillment_orders_v1'

api_instance = AmzSpApi::VendorDirectFulfillmentOrdersV1::VendorOrdersApi.new
created_after = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Purchase orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
created_before = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Purchase orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
opts = { 
  ship_from_party_id: 'ship_from_party_id_example', # String | The vendor warehouse identifier for the fulfillment warehouse. If not specified, the result will contain orders for all warehouses.
  status: 'status_example', # String | Returns only the purchase orders that match the specified status. If not specified, the result will contain orders that match any status.
  limit: 789, # Integer | The limit to the number of purchase orders returned.
  sort_order: 'sort_order_example', # String | Sort the list in ascending or descending order by order creation date.
  next_token: 'next_token_example', # String | Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call.
  include_details: 'true' # String | When true, returns the complete purchase order details. Otherwise, only purchase order numbers are returned.
}

begin
  result = api_instance.get_orders(created_after, created_before, opts)
  p result
rescue AmzSpApi::VendorDirectFulfillmentOrdersV1::ApiError => e
  puts "Exception when calling VendorOrdersApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **DateTime**| Purchase orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **created_before** | **DateTime**| Purchase orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format. | 
 **ship_from_party_id** | **String**| The vendor warehouse identifier for the fulfillment warehouse. If not specified, the result will contain orders for all warehouses. | [optional] 
 **status** | **String**| Returns only the purchase orders that match the specified status. If not specified, the result will contain orders that match any status. | [optional] 
 **limit** | **Integer**| The limit to the number of purchase orders returned. | [optional] 
 **sort_order** | **String**| Sort the list in ascending or descending order by order creation date. | [optional] 
 **next_token** | **String**| Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call. | [optional] 
 **include_details** | **String**| When true, returns the complete purchase order details. Otherwise, only purchase order numbers are returned. | [optional] [default to true]

### Return type

[**GetOrdersResponse**](GetOrdersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, payload



# **submit_acknowledgement**
> SubmitAcknowledgementResponse submit_acknowledgement(body)



Submits acknowledgements for one or more purchase orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'vendor_direct_fulfillment_orders_v1'

api_instance = AmzSpApi::VendorDirectFulfillmentOrdersV1::VendorOrdersApi.new
body = AmzSpApi::VendorDirectFulfillmentOrdersV1::SubmitAcknowledgementRequest.new # SubmitAcknowledgementRequest | The request body containing the acknowledgement to an order.


begin
  result = api_instance.submit_acknowledgement(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentOrdersV1::ApiError => e
  puts "Exception when calling VendorOrdersApi->submit_acknowledgement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitAcknowledgementRequest**](SubmitAcknowledgementRequest.md)| The request body containing the acknowledgement to an order. | 

### Return type

[**SubmitAcknowledgementResponse**](SubmitAcknowledgementResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



