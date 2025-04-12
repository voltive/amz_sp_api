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

# Unit tests for AmzSpApi::FulfillmentInbound20240320::Stackability
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Stackability' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentInbound20240320::Stackability.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Stackability' do
    it 'should create an instance of Stackability' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentInbound20240320::Stackability)
    end
  end
end
