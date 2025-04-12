=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentOrdersV1::GiftDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GiftDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentOrdersV1::GiftDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GiftDetails' do
    it 'should create an instance of GiftDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentOrdersV1::GiftDetails)
    end
  end
  describe 'test attribute "gift_message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "gift_wrap_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
