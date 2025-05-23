=begin
#Selling Partner API for Direct Fulfillment Inventory Updates

#The Selling Partner API for Direct Fulfillment Inventory Updates provides programmatic access to a direct fulfillment vendor's inventory updates.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentInventoryV1::SubmitInventoryUpdateResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmitInventoryUpdateResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentInventoryV1::SubmitInventoryUpdateResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmitInventoryUpdateResponse' do
    it 'should create an instance of SubmitInventoryUpdateResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentInventoryV1::SubmitInventoryUpdateResponse)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
