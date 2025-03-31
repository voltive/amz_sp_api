# AmzSpApi::FinancesApiModel::DefaultApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_transactions**](DefaultApi.md#list_transactions) | **GET** /finances/2024-06-19/transactions | 

# **list_transactions**
> ListTransactionsResponse list_transactions(posted_after, opts)



Returns transactions for the given parameters. It may take up to 48 hours for transactions to appear in your transaction events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'finances-api-model'

api_instance = AmzSpApi::FinancesApiModel::DefaultApi.new
posted_after = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | A date used for selecting transactions posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
opts = { 
  posted_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting transactions posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no transactions are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
  marketplace_id: 'marketplace_id_example', # String | A string token used to select Marketplace ID.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_transactions(posted_after, opts)
  p result
rescue AmzSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posted_after** | **DateTime**| A date used for selecting transactions posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format. | 
 **posted_before** | **DateTime**| A date used for selecting transactions posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no transactions are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes. | [optional] 
 **marketplace_id** | **String**| A string token used to select Marketplace ID. | [optional] 
 **next_token** | **String**| A string token returned in the response of your previous request. | [optional] 

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



