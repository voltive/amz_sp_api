=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentShippingV1::SubmitShipmentStatusUpdatesRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmitShipmentStatusUpdatesRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShippingV1::SubmitShipmentStatusUpdatesRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmitShipmentStatusUpdatesRequest' do
    it 'should create an instance of SubmitShipmentStatusUpdatesRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShippingV1::SubmitShipmentStatusUpdatesRequest)
    end
  end
  describe 'test attribute "shipment_status_updates"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
