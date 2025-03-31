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

# Unit tests for AmzSpApi::VendorShipmentsApiModel::ShipmentDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShipmentDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorShipmentsApiModel::ShipmentDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentDetails' do
    it 'should create an instance of ShipmentDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorShipmentsApiModel::ShipmentDetails)
    end
  end
  describe 'test attribute "pagination"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
