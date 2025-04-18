=begin
#Selling Partner API for Direct Fulfillment Inventory Updates

#The Selling Partner API for Direct Fulfillment Inventory Updates provides programmatic access to a direct fulfillment vendor's inventory updates.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module AmzSpApi::VendorDirectFulfillmentInventoryV1
  class UpdateInventoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Submits inventory updates for the specified warehouse for either a partial or full feed of inventory items.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body The request body containing the inventory update data to submit.
    # @param warehouse_id Identifier for the warehouse for which to update inventory.
    # @param [Hash] opts the optional parameters
    # @return [SubmitInventoryUpdateResponse]
    def submit_inventory_update(body, warehouse_id, opts = {})
      data, _status_code, _headers = submit_inventory_update_with_http_info(body, warehouse_id, opts)
      data
    end

    # Submits inventory updates for the specified warehouse for either a partial or full feed of inventory items.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body The request body containing the inventory update data to submit.
    # @param warehouse_id Identifier for the warehouse for which to update inventory.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubmitInventoryUpdateResponse, Integer, Hash)>] SubmitInventoryUpdateResponse data, response status code and response headers
    def submit_inventory_update_with_http_info(body, warehouse_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdateInventoryApi.submit_inventory_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UpdateInventoryApi.submit_inventory_update"
      end
      # verify the required parameter 'warehouse_id' is set
      if @api_client.config.client_side_validation && warehouse_id.nil?
        fail ArgumentError, "Missing the required parameter 'warehouse_id' when calling UpdateInventoryApi.submit_inventory_update"
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/inventory/v1/warehouses/{warehouseId}/items'.sub('{' + 'warehouseId' + '}', warehouse_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SubmitInventoryUpdateResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdateInventoryApi#submit_inventory_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
