=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::CatalogItemsV0::IdentifierType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IdentifierType' do
  before do
    # run before each test
    @instance = AmzSpApi::CatalogItemsV0::IdentifierType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentifierType' do
    it 'should create an instance of IdentifierType' do
      expect(@instance).to be_instance_of(AmzSpApi::CatalogItemsV0::IdentifierType)
    end
  end
  describe 'test attribute "marketplace_asin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sku_identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
