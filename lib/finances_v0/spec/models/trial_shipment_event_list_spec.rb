=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FinancesV0::TrialShipmentEventList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TrialShipmentEventList' do
  before do
    # run before each test
    @instance = AmzSpApi::FinancesV0::TrialShipmentEventList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrialShipmentEventList' do
    it 'should create an instance of TrialShipmentEventList' do
      expect(@instance).to be_instance_of(AmzSpApi::FinancesV0::TrialShipmentEventList)
    end
  end
end
