=begin
#Selling Partner API for Direct Fulfillment Shipping

#Use the Selling Partner API for Direct Fulfillment Shipping to access a direct fulfillment vendor's shipping data.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingLabelsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorShippingLabelsApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingLabelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorShippingLabelsApi' do
    it 'should create an instance of VendorShippingLabelsApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingLabelsApi)
    end
  end

  # unit tests for create_shipping_labels
  # createShippingLabels
  # Creates shipping labels for a purchase order and returns the labels.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param body The request payload that contains the parameters for creating shipping labels.
  # @param purchase_order_number The purchase order number for which you want to return the shipping labels. It should be the same number as the &#x60;purchaseOrderNumber&#x60; in the order.
  # @param [Hash] opts the optional parameters
  # @return [ShippingLabel]
  describe 'create_shipping_labels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shipping_label
  # getShippingLabel
  # Returns a shipping label for the &#x60;purchaseOrderNumber&#x60; that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param purchase_order_number The purchase order number for which you want to return the shipping label. It should be the same &#x60;purchaseOrderNumber&#x60; that you received in the order.
  # @param [Hash] opts the optional parameters
  # @return [ShippingLabel]
  describe 'get_shipping_label test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shipping_labels
  # getShippingLabels
  # Returns a list of shipping labels created during the time frame that you specify. Use the &#x60;createdAfter&#x60; and &#x60;createdBefore&#x60; parameters to define the time frame. You must use both of these parameters. The date range to search must not be more than seven days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param created_after Shipping labels that became available after this date and time will be included in the result. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  # @param created_before Shipping labels that became available before this date and time will be included in the result. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ship_from_party_id The vendor &#x60;warehouseId&#x60; for order fulfillment. If not specified, the result contains orders for all warehouses.
  # @option opts [Integer] :limit The limit to the number of records returned.
  # @option opts [String] :sort_order The sort order creation date. You can choose between ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) sort order.
  # @option opts [String] :next_token Used for pagination when there are more ship labels than the specified result size limit. The token value is returned in the previous API call.
  # @return [ShippingLabelList]
  describe 'get_shipping_labels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_shipping_label_request
  # submitShippingLabelRequest
  # Creates a shipping label for a purchase order and returns a &#x60;transactionId&#x60; for reference.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param body The request body that contains the shipping labels data.
  # @param [Hash] opts the optional parameters
  # @return [TransactionReference]
  describe 'submit_shipping_label_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
