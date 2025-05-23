=begin
#Selling Partner API for Direct Fulfillment Shipping

#Use the Selling Partner API for Direct Fulfillment Shipping to access a direct fulfillment vendor's shipping data.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VendorShippingApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VendorShippingApi' do
    it 'should create an instance of VendorShippingApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShipping20211228::VendorShippingApi)
    end
  end

  # unit tests for get_packing_slip
  # getPackingSlip
  # Returns a packing slip based on the purchaseOrderNumber that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param purchase_order_number The &#x60;purchaseOrderNumber&#x60; for the packing slip that you want.
  # @param [Hash] opts the optional parameters
  # @return [PackingSlip]
  describe 'get_packing_slip test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_packing_slips
  # getPackingSlips
  # Returns a list of packing slips for the purchase orders that match the criteria specified. Date range to search must not be more than 7 days.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param created_after Packing slips that become available after this date and time will be included in the result. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  # @param created_before Packing slips that became available before this date and time will be included in the result. Values are in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) date-time format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ship_from_party_id The vendor &#x60;warehouseId&#x60; for order fulfillment. If not specified, the result contains orders for all warehouses.
  # @option opts [Integer] :limit The maximum number of records to return.
  # @option opts [String] :sort_order The packing slip creation dates, which are sorted by ascending or descending order.
  # @option opts [String] :next_token Used for pagination when there are more packing slips than the specified result size limit. The token value is returned in the previous API call.
  # @return [PackingSlipList]
  describe 'get_packing_slips test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_shipment_confirmations
  # submitShipmentConfirmations
  # Submits one or more shipment confirmations for vendor orders.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param body Request body containing the shipment confirmations data.
  # @param [Hash] opts the optional parameters
  # @return [TransactionReference]
  describe 'submit_shipment_confirmations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_shipment_status_updates
  # submitShipmentStatusUpdates
  # This operation is only to be used by Vendor-Own-Carrier (VOC) vendors. Calling this API submits a shipment status update for the package that a vendor has shipped. It will provide the Amazon customer visibility on their order, when the package is outside of Amazon Network visibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may have higher rate and burst values then those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits).
  # @param body Request body containing the shipment status update data.
  # @param [Hash] opts the optional parameters
  # @return [TransactionReference]
  describe 'submit_shipment_status_updates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
