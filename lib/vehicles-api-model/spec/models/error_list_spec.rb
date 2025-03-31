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

# Unit tests for AmzSpApi::VehiclesApiModel::ErrorList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorList' do
  before do
    # run before each test
    @instance = AmzSpApi::VehiclesApiModel::ErrorList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorList' do
    it 'should create an instance of ErrorList' do
      expect(@instance).to be_instance_of(AmzSpApi::VehiclesApiModel::ErrorList)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
