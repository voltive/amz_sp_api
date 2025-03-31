=begin
#Selling Partner API for Merchant Fulfillment

#With the Selling Partner API for Merchant Fulfillment, you can build applications that sellers can use to purchase shipping for non-Prime and Prime orders using Amazon's Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::MerchantFulfillmentApiModel::LabelFormatOptionRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LabelFormatOptionRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::MerchantFulfillmentApiModel::LabelFormatOptionRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LabelFormatOptionRequest' do
    it 'should create an instance of LabelFormatOptionRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::MerchantFulfillmentApiModel::LabelFormatOptionRequest)
    end
  end
  describe 'test attribute "include_packing_slip_with_label"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
