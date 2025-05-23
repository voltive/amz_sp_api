=begin
#Selling Partner API for Orders

#Use the Orders Selling Partner API to programmatically retrieve order information. With this API, you can develop fast, flexible, and custom applications to manage order synchronization, perform order research, and create demand-based decision support tools.   _Note:_ For the JP, AU, and SG marketplaces, the Orders API supports orders from 2016 onward. For all other marketplaces, the Orders API supports orders for the last two years (orders older than this don't show up in the response).

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersV0::TaxCollection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxCollection' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersV0::TaxCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxCollection' do
    it 'should create an instance of TaxCollection' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersV0::TaxCollection)
    end
  end
  describe 'test attribute "model"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MarketplaceFacilitator"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.model = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "responsible_party"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Amazon Services, Inc."])
      # validator.allowable_values.each do |value|
      #   expect { @instance.responsible_party = value }.not_to raise_error
      # end
    end
  end

end
