=begin
#Selling Partner API for Supply Sources

#Manage configurations and capabilities of seller supply sources.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.51
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::SupplySourcesApiModel::SupplySourceStatusReadOnly
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SupplySourceStatusReadOnly' do
  before do
    # run before each test
    @instance = AmzSpApi::SupplySourcesApiModel::SupplySourceStatusReadOnly.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SupplySourceStatusReadOnly' do
    it 'should create an instance of SupplySourceStatusReadOnly' do
      expect(@instance).to be_instance_of(AmzSpApi::SupplySourcesApiModel::SupplySourceStatusReadOnly)
    end
  end
end
