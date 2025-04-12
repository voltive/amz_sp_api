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

# Unit tests for AmzSpApi::VendorOrders::SubmitAcknowledgementRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmitAcknowledgementRequest' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorOrders::SubmitAcknowledgementRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmitAcknowledgementRequest' do
    it 'should create an instance of SubmitAcknowledgementRequest' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorOrders::SubmitAcknowledgementRequest)
    end
  end
  describe 'test attribute "acknowledgements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
