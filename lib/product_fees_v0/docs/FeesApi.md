# AmzSpApi::ProductFeesV0::FeesApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_my_fees_estimate_for_asin**](FeesApi.md#get_my_fees_estimate_for_asin) | **POST** /products/fees/v0/items/{Asin}/feesEstimate | 
[**get_my_fees_estimate_for_sku**](FeesApi.md#get_my_fees_estimate_for_sku) | **POST** /products/fees/v0/listings/{SellerSKU}/feesEstimate | 
[**get_my_fees_estimates**](FeesApi.md#get_my_fees_estimates) | **POST** /products/fees/v0/feesEstimate | 

# **get_my_fees_estimate_for_asin**
> GetMyFeesEstimateResponse get_my_fees_estimate_for_asin(bodyasin)



Returns the estimated fees for the item indicated by the specified ASIN in the marketplace specified in the request body.  You can call `getMyFeesEstimateForASIN` for an item on behalf of a selling partner before the selling partner sets the item's price. The selling partner can then take estimated fees into account. Each fees request must include an original identifier. This identifier is included in the fees estimate so you can correlate a fees estimate with the original request.  **Note:** This identifier value is used to identify an estimate. Actual costs may vary. Search \"fees\" in [Seller Central](https://sellercentral.amazon.com/) and consult the store-specific fee schedule for the most up-to-date information.  **Note:** When using the `getMyFeesEstimateForASIN` operation with an ASIN, the fee estimates might be different. This is because these estimates use the item's catalog size, which might not always match the actual size of the item sent to Amazon.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product_fees_v0'

api_instance = AmzSpApi::ProductFeesV0::FeesApi.new
body = AmzSpApi::ProductFeesV0::GetMyFeesEstimateRequest.new # GetMyFeesEstimateRequest | 
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.


begin
  result = api_instance.get_my_fees_estimate_for_asin(bodyasin)
  p result
rescue AmzSpApi::ProductFeesV0::ApiError => e
  puts "Exception when calling FeesApi->get_my_fees_estimate_for_asin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetMyFeesEstimateRequest**](GetMyFeesEstimateRequest.md)|  | 
 **asin** | **String**| The Amazon Standard Identification Number (ASIN) of the item. | 

### Return type

[**GetMyFeesEstimateResponse**](GetMyFeesEstimateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_my_fees_estimate_for_sku**
> GetMyFeesEstimateResponse get_my_fees_estimate_for_sku(bodyseller_sku)



Returns the estimated fees for the item indicated by the specified seller SKU in the marketplace specified in the request body.  **Note:** The parameters associated with this operation may contain special characters that require URL encoding to call the API. To avoid errors with SKUs when encoding URLs, refer to [URL Encoding](https://developer-docs.amazon.com/sp-api/docs/url-encoding).  You can call `getMyFeesEstimateForSKU` for an item on behalf of a selling partner before the selling partner sets the item's price. The selling partner can then take any estimated fees into account. Each fees estimate request must include an original identifier. This identifier is included in the fees estimate so that you can correlate a fees estimate with the original request.  **Note:** This identifier value is used to identify an estimate. Actual costs may vary. Search \"fees\" in [Seller Central](https://sellercentral.amazon.com/) and consult the store-specific fee schedule for the most up-to-date information.  **Note:** When sellers use the `getMyFeesEstimateForSKU` operation with their `SellerSKU`, they get accurate fees based on real item measurements, but only after they've sent their items to Amazon.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 2 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product_fees_v0'

api_instance = AmzSpApi::ProductFeesV0::FeesApi.new
body = AmzSpApi::ProductFeesV0::GetMyFeesEstimateRequest.new # GetMyFeesEstimateRequest | 
seller_sku = 'seller_sku_example' # String | Used to identify an item in the given marketplace. SellerSKU is qualified by the seller's SellerId, which is included with every operation that you submit.


begin
  result = api_instance.get_my_fees_estimate_for_sku(bodyseller_sku)
  p result
rescue AmzSpApi::ProductFeesV0::ApiError => e
  puts "Exception when calling FeesApi->get_my_fees_estimate_for_sku: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetMyFeesEstimateRequest**](GetMyFeesEstimateRequest.md)|  | 
 **seller_sku** | **String**| Used to identify an item in the given marketplace. SellerSKU is qualified by the seller&#x27;s SellerId, which is included with every operation that you submit. | 

### Return type

[**GetMyFeesEstimateResponse**](GetMyFeesEstimateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_my_fees_estimates**
> GetMyFeesEstimatesResponse get_my_fees_estimates(body)



Returns the estimated fees for a list of products.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'product_fees_v0'

api_instance = AmzSpApi::ProductFeesV0::FeesApi.new
body = [AmzSpApi::ProductFeesV0::FeesEstimateByIdRequest.new] # Array<FeesEstimateByIdRequest> | 


begin
  result = api_instance.get_my_fees_estimates(body)
  p result
rescue AmzSpApi::ProductFeesV0::ApiError => e
  puts "Exception when calling FeesApi->get_my_fees_estimates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;FeesEstimateByIdRequest&gt;**](FeesEstimateByIdRequest.md)|  | 

### Return type

[**GetMyFeesEstimatesResponse**](GetMyFeesEstimatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



