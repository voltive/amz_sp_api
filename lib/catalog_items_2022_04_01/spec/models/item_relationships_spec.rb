=begin
#Selling Partner API for Catalog Items

#Use the Selling Partner API for Catalog Items to retrieve information about items in the Amazon catalog.  For more information, refer to the [Catalog Items API Use Case Guide](https://developer-docs.amazon.com/sp-api/docs/:catalog-items-api-v2022-04-01-use-case-guide).

OpenAPI spec version: 2022-04-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::CatalogItems20220401::ItemRelationships
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemRelationships' do
  before do
    # run before each test
    @instance = AmzSpApi::CatalogItems20220401::ItemRelationships.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemRelationships' do
    it 'should create an instance of ItemRelationships' do
      expect(@instance).to be_instance_of(AmzSpApi::CatalogItems20220401::ItemRelationships)
    end
  end
end
