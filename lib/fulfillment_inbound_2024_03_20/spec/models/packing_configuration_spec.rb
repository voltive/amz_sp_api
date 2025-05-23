=begin
#The Selling Partner API for FBA inbound operations.

#The Selling Partner API for Fulfillment By Amazon (FBA) Inbound. The FBA Inbound API enables building inbound workflows to create, manage, and send shipments into Amazon's fulfillment network. The API has interoperability with the Send-to-Amazon user interface.

OpenAPI spec version: 2024-03-20

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FulfillmentInbound20240320::PackingConfiguration
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PackingConfiguration' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentInbound20240320::PackingConfiguration.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PackingConfiguration' do
    it 'should create an instance of PackingConfiguration' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentInbound20240320::PackingConfiguration)
    end
  end
  describe 'test attribute "box_packing_methods"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "box_requirements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipping_requirements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
