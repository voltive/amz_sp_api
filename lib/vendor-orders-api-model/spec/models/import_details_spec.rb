=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorOrdersApiModel::ImportDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImportDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorOrdersApiModel::ImportDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImportDetails' do
    it 'should create an instance of ImportDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorOrdersApiModel::ImportDetails)
    end
  end
  describe 'test attribute "method_of_payment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PaidByBuyer", "CollectOnDelivery", "DefinedByBuyerAndSeller", "FOBPortOfCall", "PrepaidBySeller", "PaidBySeller"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.method_of_payment = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "international_commercial_terms"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ExWorks", "FreeCarrier", "FreeOnBoard", "FreeAlongSideShip", "CarriagePaidTo", "CostAndFreight", "CarriageAndInsurancePaidTo", "CostInsuranceAndFreight", "DeliveredAtTerminal", "DeliveredAtPlace", "DeliverDutyPaid"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.international_commercial_terms = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "port_of_delivery"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "import_containers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipping_instructions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
