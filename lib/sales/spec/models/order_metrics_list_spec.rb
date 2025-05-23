=begin
#Selling Partner API for Sales

#The Selling Partner API for Sales provides APIs related to sales performance.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::Sales::OrderMetricsList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderMetricsList' do
  before do
    # run before each test
    @instance = AmzSpApi::Sales::OrderMetricsList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderMetricsList' do
    it 'should create an instance of OrderMetricsList' do
      expect(@instance).to be_instance_of(AmzSpApi::Sales::OrderMetricsList)
    end
  end
end
