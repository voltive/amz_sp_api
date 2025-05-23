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

# Unit tests for AmzSpApi::Services::ServiceUploadDocument
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServiceUploadDocument' do
  before do
    # run before each test
    @instance = AmzSpApi::Services::ServiceUploadDocument.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceUploadDocument' do
    it 'should create an instance of ServiceUploadDocument' do
      expect(@instance).to be_instance_of(AmzSpApi::Services::ServiceUploadDocument)
    end
  end
  describe 'test attribute "content_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TIFF", "JPG", "PNG", "JPEG", "GIF", "PDF"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.content_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "content_length"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "content_md5"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
