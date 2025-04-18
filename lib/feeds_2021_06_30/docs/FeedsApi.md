# AmzSpApi::Feeds20210630::FeedsApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_feed**](FeedsApi.md#cancel_feed) | **DELETE** /feeds/2021-06-30/feeds/{feedId} | 
[**create_feed**](FeedsApi.md#create_feed) | **POST** /feeds/2021-06-30/feeds | 
[**create_feed_document**](FeedsApi.md#create_feed_document) | **POST** /feeds/2021-06-30/documents | 
[**get_feed**](FeedsApi.md#get_feed) | **GET** /feeds/2021-06-30/feeds/{feedId} | 
[**get_feed_document**](FeedsApi.md#get_feed_document) | **GET** /feeds/2021-06-30/documents/{feedDocumentId} | 
[**get_feeds**](FeedsApi.md#get_feeds) | **GET** /feeds/2021-06-30/feeds | 

# **cancel_feed**
> cancel_feed(feed_id)



Cancels the feed that you specify. Only feeds with `processingStatus=IN_QUEUE` can be cancelled. Cancelled feeds are returned in subsequent calls to the [`getFeed`](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference#getfeed) and [`getFeeds`](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference#getfeeds) operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
feed_id = 'feed_id_example' # String | The identifier for the feed. This identifier is unique only in combination with a seller ID.


begin
  api_instance.cancel_feed(feed_id)
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->cancel_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_id** | **String**| The identifier for the feed. This identifier is unique only in combination with a seller ID. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_feed**
> CreateFeedResponse create_feed(body)



Creates a feed. Upload the contents of the feed document before calling this operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0083 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).  The rate limit for the [`JSON_LISTINGS_FEED`](https://developer-docs.amazon.com/sp-api/docs/listings-feed-type-values#listings-feed) feed type differs from the rate limit for the [`createFeed`](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference#post-feeds2021-06-30feeds) operation. For more information, refer to the [Building Listings Management Workflows Guide](https://developer-docs.amazon.com/sp-api/docs/building-listings-management-workflows-guide#should-i-submit-in-bulk-using-the-json_listings_feed-or-individually-with-the-listings-items-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
body = AmzSpApi::Feeds20210630::CreateFeedSpecification.new # CreateFeedSpecification | Information required to create the feed.


begin
  result = api_instance.create_feed(body)
  p result
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->create_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFeedSpecification**](CreateFeedSpecification.md)| Information required to create the feed. | 

### Return type

[**CreateFeedResponse**](CreateFeedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_feed_document**
> CreateFeedDocumentResponse create_feed_document(body)



Creates a feed document for the feed type that you specify. This operation returns a presigned URL for uploading the feed document contents. It also returns a `feedDocumentId` value that you can pass in with a subsequent call to the [`createFeed`](https://developer-docs.amazon.com/sp-api/docs/feeds-api-v2021-06-30-reference#createfeed) operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
body = AmzSpApi::Feeds20210630::CreateFeedDocumentSpecification.new # CreateFeedDocumentSpecification | Specifies the content type for the createFeedDocument operation.


begin
  result = api_instance.create_feed_document(body)
  p result
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->create_feed_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFeedDocumentSpecification**](CreateFeedDocumentSpecification.md)| Specifies the content type for the createFeedDocument operation. | 

### Return type

[**CreateFeedDocumentResponse**](CreateFeedDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feed**
> Feed get_feed(feed_id)



Returns feed details (including the `resultDocumentId`, if available) for the feed that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
feed_id = 'feed_id_example' # String | The identifier for the feed. This identifier is unique only in combination with a seller ID.


begin
  result = api_instance.get_feed(feed_id)
  p result
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->get_feed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_id** | **String**| The identifier for the feed. This identifier is unique only in combination with a seller ID. | 

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_feed_document**
> FeedDocument get_feed_document(feed_document_id)



Returns the information required for retrieving a feed document's contents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
feed_document_id = 'feed_document_id_example' # String | The identifier of the feed document.


begin
  result = api_instance.get_feed_document(feed_document_id)
  p result
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->get_feed_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_document_id** | **String**| The identifier of the feed document. | 

### Return type

[**FeedDocument**](FeedDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_feeds**
> GetFeedsResponse get_feeds(opts)



Returns feed details for the feeds that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```ruby
# load the gem
require 'feeds_2021_06_30'

api_instance = AmzSpApi::Feeds20210630::FeedsApi.new
opts = { 
  feed_types: ['feed_types_example'], # Array<String> | A list of feed types used to filter feeds. When feedTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either feedTypes or nextToken is required.
  marketplace_ids: ['marketplace_ids_example'], # Array<String> | A list of marketplace identifiers used to filter feeds. The feeds returned will match at least one of the marketplaces that you specify.
  page_size: 10, # Integer | The maximum number of feeds to return in a single call.
  processing_statuses: ['processing_statuses_example'], # Array<String> | A list of processing statuses used to filter feeds.
  created_since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The earliest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is 90 days ago. Feeds are retained for a maximum of 90 days.
  created_until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The latest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is now.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getFeeds operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail.
}

begin
  result = api_instance.get_feeds(opts)
  p result
rescue AmzSpApi::Feeds20210630::ApiError => e
  puts "Exception when calling FeedsApi->get_feeds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feed_types** | [**Array&lt;String&gt;**](String.md)| A list of feed types used to filter feeds. When feedTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either feedTypes or nextToken is required. | [optional] 
 **marketplace_ids** | [**Array&lt;String&gt;**](String.md)| A list of marketplace identifiers used to filter feeds. The feeds returned will match at least one of the marketplaces that you specify. | [optional] 
 **page_size** | **Integer**| The maximum number of feeds to return in a single call. | [optional] [default to 10]
 **processing_statuses** | [**Array&lt;String&gt;**](String.md)| A list of processing statuses used to filter feeds. | [optional] 
 **created_since** | **DateTime**| The earliest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is 90 days ago. Feeds are retained for a maximum of 90 days. | [optional] 
 **created_until** | **DateTime**| The latest feed creation date and time for feeds included in the response, in ISO 8601 format. The default is now. | [optional] 
 **next_token** | **String**| A string token returned in the response to your previous request. nextToken is returned when the number of results exceeds the specified pageSize value. To get the next page of results, call the getFeeds operation and include this token as the only parameter. Specifying nextToken with any other parameters will cause the request to fail. | [optional] 

### Return type

[**GetFeedsResponse**](GetFeedsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



