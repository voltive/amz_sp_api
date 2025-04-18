=begin
#The Selling Partner API for Amazon Warehousing and Distribution

#The Selling Partner API for Amazon Warehousing and Distribution (AWD) provides programmatic access to information about AWD shipments and inventory.

OpenAPI spec version: 2024-05-09

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::AmazonWarehousingAndDistributionModel20240509
  class PrepCategory
    ADULT = 'ADULT'.freeze
    BABY = 'BABY'.freeze
    FC_PROVIDED = 'FC_PROVIDED'.freeze
    FRAGILE = 'FRAGILE'.freeze
    GRANULAR = 'GRANULAR'.freeze
    HANGER = 'HANGER'.freeze
    LIQUID = 'LIQUID'.freeze
    PERFORATED = 'PERFORATED'.freeze
    SET = 'SET'.freeze
    SHARP = 'SHARP'.freeze
    SMALL = 'SMALL'.freeze
    TEXTILE = 'TEXTILE'.freeze
    NO_PREP = 'NO_PREP'.freeze
    UNKNOWN = 'UNKNOWN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PrepCategory.constants.select { |c| PrepCategory::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PrepCategory" if constantValues.empty?
      value
    end
  end
end
