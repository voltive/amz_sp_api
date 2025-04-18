=begin
#Selling Partner API for Data Kiosk

#The Selling Partner API for Data Kiosk lets you submit GraphQL queries from a variety of schemas to help selling partners manage their businesses.

OpenAPI spec version: 2023-11-15

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::DataKiosk20231115::QueryList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'QueryList' do
  before do
    # run before each test
    @instance = AmzSpApi::DataKiosk20231115::QueryList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QueryList' do
    it 'should create an instance of QueryList' do
      expect(@instance).to be_instance_of(AmzSpApi::DataKiosk20231115::QueryList)
    end
  end
end
