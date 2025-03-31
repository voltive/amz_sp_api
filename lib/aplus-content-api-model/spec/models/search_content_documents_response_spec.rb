=begin
#Selling Partner API for A+ Content Management

#Use the A+ Content API to build applications that help selling partners add rich marketing content to their Amazon product detail pages. Selling partners can use A+ content to share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners use content modules to add images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::AplusContentApiModel::SearchContentDocumentsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchContentDocumentsResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::AplusContentApiModel::SearchContentDocumentsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchContentDocumentsResponse' do
    it 'should create an instance of SearchContentDocumentsResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::AplusContentApiModel::SearchContentDocumentsResponse)
    end
  end
  describe 'test attribute "content_metadata_records"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_page_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
