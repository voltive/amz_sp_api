=begin
#Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data

#The Selling Partner API for Vendor Direct Fulfillment Sandbox Test Data provides programmatic access to vendor direct fulfillment sandbox test data.

OpenAPI spec version: 2021-10-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentSandboxTestData20211028::OrderScenarioRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderScenarioRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentSandboxTestData20211028::OrderScenarioRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderScenarioRequest' do
    it 'should create an instance of OrderScenarioRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentSandboxTestData20211028::OrderScenarioRequest)
    end
  end
  describe 'test attribute "selling_party"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ship_from_party"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
