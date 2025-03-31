=begin
#Selling Partner API for Listings Items

#The Selling Partner API for Listings Items (Listings Items API) provides programmatic access to selling partner listings on Amazon. Use this API in collaboration with the Selling Partner API for Product Type Definitions, which you use to retrieve the information about Amazon product types needed to use the Listings Items API.  For more information, see the [Listings Items API Use Case Guide](https://developer-docs.amazon.com/sp-api/docs/listings-items-api-v2021-08-01-use-case-guide).

OpenAPI spec version: 2021-08-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ListingsItemsApiModel::ListingsItemPatchRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ListingsItemPatchRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::ListingsItemsApiModel::ListingsItemPatchRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListingsItemPatchRequest' do
    it 'should create an instance of ListingsItemPatchRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::ListingsItemsApiModel::ListingsItemPatchRequest)
    end
  end
  describe 'test attribute "product_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "patches"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
