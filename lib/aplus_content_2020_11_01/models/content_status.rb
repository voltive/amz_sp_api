=begin
#Selling Partner API for A+ Content Management

#Use the A+ Content API to build applications that help selling partners add rich marketing content to their Amazon product detail pages. Selling partners can use A+ content to share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners use content modules to add images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::AplusContent20201101
  class ContentStatus
    APPROVED = 'APPROVED'.freeze
    DRAFT = 'DRAFT'.freeze
    REJECTED = 'REJECTED'.freeze
    SUBMITTED = 'SUBMITTED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContentStatus.constants.select { |c| ContentStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContentStatus" if constantValues.empty?
      value
    end
  end
end
