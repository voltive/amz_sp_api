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

# Unit tests for AmzSpApi::ListingsItems20210801::ItemIdentifiers
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemIdentifiers' do
  before do
    # run before each test
    @instance = AmzSpApi::ListingsItems20210801::ItemIdentifiers.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemIdentifiers' do
    it 'should create an instance of ItemIdentifiers' do
      expect(@instance).to be_instance_of(AmzSpApi::ListingsItems20210801::ItemIdentifiers)
    end
  end
end
