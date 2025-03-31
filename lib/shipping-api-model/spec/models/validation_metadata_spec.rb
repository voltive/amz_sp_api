=begin
#Amazon Shipping API

#The Amazon Shipping API is designed to support outbound shipping use cases both for orders originating on Amazon-owned marketplaces as well as external channels/marketplaces. With these APIs, you can request shipping rates, create shipments, cancel shipments, and track shipments.

OpenAPI spec version: v2
Contact: swa-api-core@amazon.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ShippingApiModel::ValidationMetadata
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ValidationMetadata' do
  before do
    # run before each test
    @instance = AmzSpApi::ShippingApiModel::ValidationMetadata.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ValidationMetadata' do
    it 'should create an instance of ValidationMetadata' do
      expect(@instance).to be_instance_of(AmzSpApi::ShippingApiModel::ValidationMetadata)
    end
  end
  describe 'test attribute "error_message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "validation_strategy"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
