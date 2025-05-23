=begin
#Selling Partner API for Direct Fulfillment Transaction Status

#The Selling Partner API for Direct Fulfillment Transaction Status provides programmatic access to a direct fulfillment vendor's transaction status.

OpenAPI spec version: 2021-12-28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'vendor_direct_fulfillment_transactions_2021_12_28/api_client'
require 'vendor_direct_fulfillment_transactions_2021_12_28/api_error'
require 'vendor_direct_fulfillment_transactions_2021_12_28/version'
require 'vendor_direct_fulfillment_transactions_2021_12_28/configuration'

# Models
require 'vendor_direct_fulfillment_transactions_2021_12_28/models/error'
require 'vendor_direct_fulfillment_transactions_2021_12_28/models/error_list'
require 'vendor_direct_fulfillment_transactions_2021_12_28/models/transaction'
require 'vendor_direct_fulfillment_transactions_2021_12_28/models/transaction_status'

# APIs
require 'vendor_direct_fulfillment_transactions_2021_12_28/api/vendor_transaction_api'

module AmzSpApi::VendorDirectFulfillmentTransactions20211228
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentTransactions20211228.configure do |config|
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
