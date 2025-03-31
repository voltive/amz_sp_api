=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::FulfillmentInboundApiModel
  class BoxContentsSource
    NONE = 'NONE'.freeze
    FEED = 'FEED'.freeze
    N2_D_BARCODE = '2D_BARCODE'.freeze
    INTERACTIVE = 'INTERACTIVE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BoxContentsSource.constants.select { |c| BoxContentsSource::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BoxContentsSource" if constantValues.empty?
      value
    end
  end
end
