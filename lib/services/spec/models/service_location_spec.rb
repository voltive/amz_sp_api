=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders and manage their resources.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::Services::ServiceLocation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServiceLocation' do
  before do
    # run before each test
    @instance = AmzSpApi::Services::ServiceLocation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceLocation' do
    it 'should create an instance of ServiceLocation' do
      expect(@instance).to be_instance_of(AmzSpApi::Services::ServiceLocation)
    end
  end
  describe 'test attribute "service_location_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IN_HOME", "IN_STORE", "ONLINE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.service_location_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
