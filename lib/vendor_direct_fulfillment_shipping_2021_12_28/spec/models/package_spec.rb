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

# Unit tests for AmzSpApi::VendorDirectFulfillmentShipping20211228::Package
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Package' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentShipping20211228::Package.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Package' do
    it 'should create an instance of Package' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentShipping20211228::Package)
    end
  end
  describe 'test attribute "package_tracking_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
