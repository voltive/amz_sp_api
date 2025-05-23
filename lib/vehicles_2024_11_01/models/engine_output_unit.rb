=begin
#The Selling Partner API for Automotive.

#The Selling Partner API for Automotive provides programmatic access to information needed by selling partners to provide compatibility information about their listed products.

OpenAPI spec version: 2024-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::Vehicles20241101
  class EngineOutputUnit
    KILOWATT = 'KILOWATT'.freeze
    HORSEPOWER = 'HORSEPOWER'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EngineOutputUnit.constants.select { |c| EngineOutputUnit::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EngineOutputUnit" if constantValues.empty?
      value
    end
  end
end
