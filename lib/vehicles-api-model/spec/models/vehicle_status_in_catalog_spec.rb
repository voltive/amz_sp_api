=begin
#The Selling Partner API for Automotive.

#The Selling Partner API for Automotive provides programmatic access to information needed by selling partners to provide compatibility information about their listed products.

OpenAPI spec version: 2024-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VehiclesApiModel::VehicleStatusInCatalog
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VehicleStatusInCatalog' do
  before do
    # run before each test
    @instance = AmzSpApi::VehiclesApiModel::VehicleStatusInCatalog.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VehicleStatusInCatalog' do
    it 'should create an instance of VehicleStatusInCatalog' do
      expect(@instance).to be_instance_of(AmzSpApi::VehiclesApiModel::VehicleStatusInCatalog)
    end
  end
end
