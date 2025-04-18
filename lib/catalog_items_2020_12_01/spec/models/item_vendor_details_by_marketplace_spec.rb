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

# Unit tests for AmzSpApi::CatalogItems20201201::ItemVendorDetailsByMarketplace
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemVendorDetailsByMarketplace' do
  before do
    # run before each test
    @instance = AmzSpApi::CatalogItems20201201::ItemVendorDetailsByMarketplace.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemVendorDetailsByMarketplace' do
    it 'should create an instance of ItemVendorDetailsByMarketplace' do
      expect(@instance).to be_instance_of(AmzSpApi::CatalogItems20201201::ItemVendorDetailsByMarketplace)
    end
  end
  describe 'test attribute "marketplace_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "brand_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "category_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "manufacturer_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "manufacturer_code_parent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "product_group"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "replenishment_category"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ALLOCATED", "BASIC_REPLENISHMENT", "IN_SEASON", "LIMITED_REPLENISHMENT", "MANUFACTURER_OUT_OF_STOCK", "NEW_PRODUCT", "NON_REPLENISHABLE", "NON_STOCKUPABLE", "OBSOLETE", "PLANNED_REPLENISHMENT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.replenishment_category = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "subcategory_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
