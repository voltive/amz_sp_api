=begin
#Selling Partner API for Direct Fulfillment Shipping

#Use the Selling Partner API for Direct Fulfillment Shipping to access a direct fulfillment vendor's shipping data.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentShipping20211228::ShipmentStatusUpdate
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShipmentStatusUpdate' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShipping20211228::ShipmentStatusUpdate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentStatusUpdate' do
    it 'should create an instance of ShipmentStatusUpdate' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShipping20211228::ShipmentStatusUpdate)
    end
  end
  describe 'test attribute "purchase_order_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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

  describe 'test attribute "status_update_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
