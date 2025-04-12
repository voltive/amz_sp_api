=begin
#The Selling Partner API for FBA inbound operations.

#The Selling Partner API for Fulfillment By Amazon (FBA) Inbound. The FBA Inbound API enables building inbound workflows to create, manage, and send shipments into Amazon's fulfillment network. The API has interoperability with the Send-to-Amazon user interface.

OpenAPI spec version: 2024-03-20

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::FulfillmentInbound20240320
  class PrepType
    BLACK_SHRINKWRAP = 'ITEM_BLACK_SHRINKWRAP'.freeze
    BLANKSTK = 'ITEM_BLANKSTK'.freeze
    BOXING = 'ITEM_BOXING'.freeze
    BUBBLEWRAP = 'ITEM_BUBBLEWRAP'.freeze
    CAP_SEALING = 'ITEM_CAP_SEALING'.freeze
    DEBUNDLE = 'ITEM_DEBUNDLE'.freeze
    HANG_GARMENT = 'ITEM_HANG_GARMENT'.freeze
    LABELING = 'ITEM_LABELING'.freeze
    NO_PREP = 'ITEM_NO_PREP'.freeze
    POLYBAGGING = 'ITEM_POLYBAGGING'.freeze
    RMOVHANG = 'ITEM_RMOVHANG'.freeze
    SETCREAT = 'ITEM_SETCREAT'.freeze
    SETSTK = 'ITEM_SETSTK'.freeze
    SIOC = 'ITEM_SIOC'.freeze
    SUFFOSTK = 'ITEM_SUFFOSTK'.freeze
    TAPING = 'ITEM_TAPING'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PrepType.constants.select { |c| PrepType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PrepType" if constantValues.empty?
      value
    end
  end
end
