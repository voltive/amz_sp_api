=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentShippingV1::CustomerInvoicesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerInvoicesApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShippingV1::CustomerInvoicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerInvoicesApi' do
    it 'should create an instance of CustomerInvoicesApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShippingV1::CustomerInvoicesApi)
    end
  end

  # unit tests for get_customer_invoice
  # Returns a customer invoice based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param purchase_order_number Purchase order number of the shipment for which to return the invoice.
  # @param [Hash] opts the optional parameters
  # @return [GetCustomerInvoiceResponse]
  describe 'get_customer_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_invoices
  # Returns a list of customer invoices created during a time frame that you specify. You define the  time frame using the createdAfter and createdBefore parameters. You must use both of these parameters. The date range to search must be no more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param created_after Orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
  # @param created_before Orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ship_from_party_id The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses.
  # @option opts [Integer] :limit The limit to the number of records returned
  # @option opts [String] :sort_order Sort ASC or DESC by order creation date.
  # @option opts [String] :next_token Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call.
  # @return [GetCustomerInvoicesResponse]
  describe 'get_customer_invoices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
