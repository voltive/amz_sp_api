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

# Unit tests for AmzSpApi::SupplySourcesApiModel::ThroughputConfig
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ThroughputConfig' do
  before do
    # run before each test
    @instance = AmzSpApi::SupplySourcesApiModel::ThroughputConfig.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ThroughputConfig' do
    it 'should create an instance of ThroughputConfig' do
      expect(@instance).to be_instance_of(AmzSpApi::SupplySourcesApiModel::ThroughputConfig)
    end
  end
  describe 'test attribute "throughput_cap"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "throughput_unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
