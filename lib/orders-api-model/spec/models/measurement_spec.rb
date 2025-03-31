=begin
#Selling Partner API for Orders

#Use the Orders Selling Partner API to programmatically retrieve order information. With this API, you can develop fast, flexible, and custom applications to manage order synchronization, perform order research, and create demand-based decision support tools.   _Note:_ For the JP, AU, and SG marketplaces, the Orders API supports orders from 2016 onward. For all other marketplaces, the Orders API supports orders for the last two years (orders older than this don't show up in the response).

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersApiModel::Measurement
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Measurement' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::Measurement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Measurement' do
    it 'should create an instance of Measurement' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::Measurement)
    end
  end
  describe 'test attribute "unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OUNCES", "POUNDS", "KILOGRAMS", "GRAMS", "MILLIGRAMS", "INCHES", "FEET", "METERS", "CENTIMETERS", "MILLIMETERS", "SQUARE_METERS", "SQUARE_CENTIMETERS", "SQUARE_FEET", "SQUARE_INCHES", "GALLONS", "PINTS", "QUARTS", "FLUID_OUNCES", "LITERS", "CUBIC_METERS", "CUBIC_FEET", "CUBIC_INCHES", "CUBIC_CENTIMETERS", "COUNT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.unit = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
