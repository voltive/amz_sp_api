=begin
#The Selling Partner API for Transfers.

#The Selling Partner API for Transfers enables selling partners to retrieve payment methods and initiate payouts for their seller accounts. This API supports the following marketplaces: DE, FR, IT, ES, SE, NL, PL, and BE.

OpenAPI spec version: 2024-06-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::Finances20240601::PaymentMethodList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentMethodList' do
  before do
    # run before each test
    @instance = AmzSpApi::Finances20240601::PaymentMethodList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethodList' do
    it 'should create an instance of PaymentMethodList' do
      expect(@instance).to be_instance_of(AmzSpApi::Finances20240601::PaymentMethodList)
    end
  end
end
