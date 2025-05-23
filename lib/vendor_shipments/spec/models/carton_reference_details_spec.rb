=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorShipments::CartonReferenceDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CartonReferenceDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipments::CartonReferenceDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CartonReferenceDetails' do
    it 'should create an instance of CartonReferenceDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipments::CartonReferenceDetails)
    end
  end
  describe 'test attribute "carton_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "carton_reference_numbers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
