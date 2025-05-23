# AmzSpApi::ApplicationManagement20231130::ApplicationsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rotate_application_client_secret**](ApplicationsApi.md#rotate_application_client_secret) | **POST** /applications/2023-11-30/clientSecret | 

# **rotate_application_client_secret**
> rotate_application_client_secret



Rotates application client secrets for a developer application. Developers must register a destination queue in the developer console before calling this operation. When this operation is called a new client secret is generated and sent to the developer-registered queue. For more information, refer to [Rotate your application client secret](https://developer-docs.amazon.com/sp-api/v0/docs/application-management-api-v2023-11-30-use-case-guide#tutorial-rotate-your-applications-client-secret).  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'application_management_2023_11_30'

api_instance = AmzSpApi::ApplicationManagement20231130::ApplicationsApi.new

begin
  api_instance.rotate_application_client_secret
rescue AmzSpApi::ApplicationManagement20231130::ApiError => e
  puts "Exception when calling ApplicationsApi->rotate_application_client_secret: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



