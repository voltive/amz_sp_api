=begin
#The Selling Partner API for FBA inbound operations.

#The Selling Partner API for Fulfillment By Amazon (FBA) Inbound. The FBA Inbound API enables building inbound workflows to create, manage, and send shipments into Amazon's fulfillment network. The API has interoperability with the Send-to-Amazon user interface.

OpenAPI spec version: 2024-03-20

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::FulfillmentInbound20240320
  class OwnerConstraint
    AMAZON_ONLY = 'AMAZON_ONLY'.freeze
    NONE_ONLY = 'NONE_ONLY'.freeze
    SELLER_ONLY = 'SELLER_ONLY'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = OwnerConstraint.constants.select { |c| OwnerConstraint::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OwnerConstraint" if constantValues.empty?
      value
    end
  end
end
