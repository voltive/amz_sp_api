=begin
#Selling Partner API for Retail Procurement Payments

#The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorInvoicesApiModel::ChargeDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChargeDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorInvoicesApiModel::ChargeDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargeDetails' do
    it 'should create an instance of ChargeDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorInvoicesApiModel::ChargeDetails)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Freight", "Packing", "Duty", "Service", "SmallOrder", "InsurancePlacementCost", "InsuranceFee", "SpecialHandlingService", "CollectionAndRecyclingService", "EnvironmentalProtectionService", "TaxCollectedAtSource"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "charge_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
