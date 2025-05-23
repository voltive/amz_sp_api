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

# Unit tests for AmzSpApi::VendorShipments::Dimensions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Dimensions' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipments::Dimensions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Dimensions' do
    it 'should create an instance of Dimensions' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipments::Dimensions)
    end
  end
  describe 'test attribute "length"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "width"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "height"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit_of_measure"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["In", "Ft", "Meter", "Yard"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.unit_of_measure = value }.not_to raise_error
      # end
    end
  end

end
