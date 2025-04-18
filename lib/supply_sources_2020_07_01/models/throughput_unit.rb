=begin
#Selling Partner API for Supply Sources

#Manage configurations and capabilities of seller supply sources.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::SupplySources20200701
  class ThroughputUnit
    ORDER = 'Order'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ThroughputUnit.constants.select { |c| ThroughputUnit::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ThroughputUnit" if constantValues.empty?
      value
    end
  end
end
