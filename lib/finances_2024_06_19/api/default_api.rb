=begin
#The Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order or date range without having to wait until a statement period closes.

OpenAPI spec version: 2024-06-19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module AmzSpApi::Finances20240619
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns transactions for the given parameters. It may take up to 48 hours for transactions to appear in your transaction events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param posted_after A date used for selecting transactions posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :posted_before A date used for selecting transactions posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no transactions are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
    # @option opts [String] :marketplace_id A string token used to select Marketplace ID.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [ListTransactionsResponse]
    def list_transactions(posted_after, opts = {})
      data, _status_code, _headers = list_transactions_with_http_info(posted_after, opts)
      data
    end

    # Returns transactions for the given parameters. It may take up to 48 hours for transactions to appear in your transaction events.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.5 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param posted_after A date used for selecting transactions posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :posted_before A date used for selecting transactions posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no transactions are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
    # @option opts [String] :marketplace_id A string token used to select Marketplace ID.
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @return [Array<(ListTransactionsResponse, Integer, Hash)>] ListTransactionsResponse data, response status code and response headers
    def list_transactions_with_http_info(posted_after, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.list_transactions ...'
      end
      # verify the required parameter 'posted_after' is set
      if @api_client.config.client_side_validation && posted_after.nil?
        fail ArgumentError, "Missing the required parameter 'posted_after' when calling DefaultApi.list_transactions"
      end
      # resource path
      local_var_path = '/finances/2024-06-19/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'postedAfter'] = posted_after
      query_params[:'postedBefore'] = opts[:'posted_before'] if !opts[:'posted_before'].nil?
      query_params[:'marketplaceId'] = opts[:'marketplace_id'] if !opts[:'marketplace_id'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ListTransactionsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#list_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
