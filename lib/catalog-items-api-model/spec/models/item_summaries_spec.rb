=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, see the [Catalog Items API Use Case Guide](doc:catalog-items-api-v2020-12-01-use-case-guide).

OpenAPI spec version: 2020-12-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::CatalogItemsApiModel::ItemSummaries
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemSummaries' do
  before do
    # run before each test
    @instance = AmzSpApi::CatalogItemsApiModel::ItemSummaries.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemSummaries' do
    it 'should create an instance of ItemSummaries' do
      expect(@instance).to be_instance_of(AmzSpApi::CatalogItemsApiModel::ItemSummaries)
    end
  end
end
