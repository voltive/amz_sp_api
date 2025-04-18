=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::ProductFeesV0
  class OptionalFulfillmentProgram
    CORE = 'FBA_CORE'.freeze
    SNL = 'FBA_SNL'.freeze
    EFN = 'FBA_EFN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = OptionalFulfillmentProgram.constants.select { |c| OptionalFulfillmentProgram::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OptionalFulfillmentProgram" if constantValues.empty?
      value
    end
  end
end
