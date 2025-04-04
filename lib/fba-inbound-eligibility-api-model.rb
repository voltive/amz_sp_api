=begin
#Selling Partner API for FBA Inbound Eligibilty

#With the FBA Inbound Eligibility API, you can build applications that let sellers get eligibility previews for items before shipping them to Amazon's fulfillment centers. With this API you can find out if an item is eligible for inbound shipment to Amazon's fulfillment centers in a specific marketplace. You can also find out if an item is eligible for using the manufacturer barcode for FBA inventory tracking. Sellers can use this information to inform their decisions about which items to ship Amazon's fulfillment centers.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'fba-inbound-eligibility-api-model/api_client'
require 'fba-inbound-eligibility-api-model/api_error'
require 'fba-inbound-eligibility-api-model/version'
require 'fba-inbound-eligibility-api-model/configuration'

# Models
require 'fba-inbound-eligibility-api-model/models/error'
require 'fba-inbound-eligibility-api-model/models/error_list'
require 'fba-inbound-eligibility-api-model/models/get_item_eligibility_preview_response'
require 'fba-inbound-eligibility-api-model/models/item_eligibility_preview'

# APIs
require 'fba-inbound-eligibility-api-model/api/fba_inbound_api'

module AmzSpApi::FbaInboundEligibilityApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::FbaInboundEligibilityApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
