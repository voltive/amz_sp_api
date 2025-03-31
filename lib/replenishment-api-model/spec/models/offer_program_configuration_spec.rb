=begin
#Selling Partner API for Replenishment

#The Selling Partner API for Replenishment (Replenishment API) provides programmatic access to replenishment program metrics and offers. These programs provide recurring delivery of any replenishable item at a frequency chosen by the customer.  The Replenishment API is available worldwide wherever Amazon Subscribe & Save is available or is supported. The API is available to vendors and FBA selling partners.

OpenAPI spec version: 2022-11-07

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ReplenishmentApiModel::OfferProgramConfiguration
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OfferProgramConfiguration' do
  before do
    # run before each test
    @instance = AmzSpApi::ReplenishmentApiModel::OfferProgramConfiguration.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OfferProgramConfiguration' do
    it 'should create an instance of OfferProgramConfiguration' do
      expect(@instance).to be_instance_of(AmzSpApi::ReplenishmentApiModel::OfferProgramConfiguration)
    end
  end
  describe 'test attribute "preferences"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "promotions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enrollment_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
