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

# Unit tests for AmzSpApi::VendorDirectFulfillmentShippingApiModel::PackingSlip
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PackingSlip' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShippingApiModel::PackingSlip.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PackingSlip' do
    it 'should create an instance of PackingSlip' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShippingApiModel::PackingSlip)
    end
  end
  describe 'test attribute "purchase_order_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "content_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["application/pdf"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.content_type = value }.not_to raise_error
      # end
    end
  end

end
