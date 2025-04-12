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

# Unit tests for AmzSpApi::VendorDirectFulfillmentShippingV1::ShipmentDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShipmentDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShippingV1::ShipmentDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentDetails' do
    it 'should create an instance of ShipmentDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShippingV1::ShipmentDetails)
    end
  end
  describe 'test attribute "shipped_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipment_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SHIPPED", "FLOOR_DENIAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.shipment_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_priority_shipment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "vendor_order_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "estimated_delivery_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
