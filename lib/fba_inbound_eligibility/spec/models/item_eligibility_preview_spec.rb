=begin
#Selling Partner API for FBA Inbound Eligibilty

#With the FBA Inbound Eligibility API, you can build applications that let sellers get eligibility previews for items before shipping them to Amazon's fulfillment centers. With this API you can find out if an item is eligible for inbound shipment to Amazon's fulfillment centers in a specific marketplace. You can also find out if an item is eligible for using the manufacturer barcode for FBA inventory tracking. Sellers can use this information to inform their decisions about which items to ship Amazon's fulfillment centers.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FbaInboundEligibility::ItemEligibilityPreview
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemEligibilityPreview' do
  before do
    # run before each test
    @instance = AmzSpApi::FbaInboundEligibility::ItemEligibilityPreview.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemEligibilityPreview' do
    it 'should create an instance of ItemEligibilityPreview' do
      expect(@instance).to be_instance_of(AmzSpApi::FbaInboundEligibility::ItemEligibilityPreview)
    end
  end
  describe 'test attribute "asin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "marketplace_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "program"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["INBOUND", "COMMINGLING"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.program = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_eligible_for_program"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ineligibility_reason_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["FBA_INB_0004", "FBA_INB_0006", "FBA_INB_0007", "FBA_INB_0008", "FBA_INB_0009", "FBA_INB_0010", "FBA_INB_0011", "FBA_INB_0012", "FBA_INB_0013", "FBA_INB_0014", "FBA_INB_0015", "FBA_INB_0016", "FBA_INB_0017", "FBA_INB_0018", "FBA_INB_0019", "FBA_INB_0034", "FBA_INB_0035", "FBA_INB_0036", "FBA_INB_0037", "FBA_INB_0038", "FBA_INB_0050", "FBA_INB_0051", "FBA_INB_0053", "FBA_INB_0055", "FBA_INB_0056", "FBA_INB_0059", "FBA_INB_0065", "FBA_INB_0066", "FBA_INB_0067", "FBA_INB_0068", "FBA_INB_0095", "FBA_INB_0097", "FBA_INB_0098", "FBA_INB_0099", "FBA_INB_0100", "FBA_INB_0103", "FBA_INB_0104", "FBA_INB_0197", "UNKNOWN_INB_ERROR_CODE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.ineligibility_reason_list = value }.not_to raise_error
      # end
    end
  end

end
