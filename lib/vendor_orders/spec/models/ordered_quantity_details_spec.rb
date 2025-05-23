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

# Unit tests for AmzSpApi::VendorOrders::OrderedQuantityDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderedQuantityDetails' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorOrders::OrderedQuantityDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderedQuantityDetails' do
    it 'should create an instance of OrderedQuantityDetails' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorOrders::OrderedQuantityDetails)
    end
  end
  describe 'test attribute "updated_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ordered_quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cancelled_quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
