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

# Unit tests for AmzSpApi::VendorShipments::TransportationDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransportationDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipments::TransportationDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransportationDetails' do
    it 'should create an instance of TransportationDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipments::TransportationDetails)
    end
  end
  describe 'test attribute "ship_mode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TruckLoad", "LessThanTruckLoad", "SmallParcel"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.ship_mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "transportation_mode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Road", "Air", "Ocean"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.transportation_mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "shipped_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "estimated_delivery_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipment_delivery_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "carrier_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bill_of_lading_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
