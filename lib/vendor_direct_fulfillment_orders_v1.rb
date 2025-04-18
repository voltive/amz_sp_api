=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'vendor_direct_fulfillment_orders_v1/api_client'
require 'vendor_direct_fulfillment_orders_v1/api_error'
require 'vendor_direct_fulfillment_orders_v1/version'
require 'vendor_direct_fulfillment_orders_v1/configuration'

# Models
require 'vendor_direct_fulfillment_orders_v1/models/acknowledgement_status'
require 'vendor_direct_fulfillment_orders_v1/models/address'
require 'vendor_direct_fulfillment_orders_v1/models/decimal'
require 'vendor_direct_fulfillment_orders_v1/models/error'
require 'vendor_direct_fulfillment_orders_v1/models/error_list'
require 'vendor_direct_fulfillment_orders_v1/models/get_order_response'
require 'vendor_direct_fulfillment_orders_v1/models/get_orders_response'
require 'vendor_direct_fulfillment_orders_v1/models/gift_details'
require 'vendor_direct_fulfillment_orders_v1/models/item_quantity'
require 'vendor_direct_fulfillment_orders_v1/models/money'
require 'vendor_direct_fulfillment_orders_v1/models/order'
require 'vendor_direct_fulfillment_orders_v1/models/order_acknowledgement_item'
require 'vendor_direct_fulfillment_orders_v1/models/order_details'
require 'vendor_direct_fulfillment_orders_v1/models/order_details_tax_total'
require 'vendor_direct_fulfillment_orders_v1/models/order_item'
require 'vendor_direct_fulfillment_orders_v1/models/order_item_acknowledgement'
require 'vendor_direct_fulfillment_orders_v1/models/order_item_tax_details'
require 'vendor_direct_fulfillment_orders_v1/models/order_list'
require 'vendor_direct_fulfillment_orders_v1/models/pagination'
require 'vendor_direct_fulfillment_orders_v1/models/party_identification'
require 'vendor_direct_fulfillment_orders_v1/models/scheduled_delivery_shipment'
require 'vendor_direct_fulfillment_orders_v1/models/shipment_dates'
require 'vendor_direct_fulfillment_orders_v1/models/shipment_details'
require 'vendor_direct_fulfillment_orders_v1/models/submit_acknowledgement_request'
require 'vendor_direct_fulfillment_orders_v1/models/submit_acknowledgement_response'
require 'vendor_direct_fulfillment_orders_v1/models/tax_details'
require 'vendor_direct_fulfillment_orders_v1/models/tax_line_item'
require 'vendor_direct_fulfillment_orders_v1/models/tax_registration_details'
require 'vendor_direct_fulfillment_orders_v1/models/transaction_id'

# APIs
require 'vendor_direct_fulfillment_orders_v1/api/vendor_orders_api'

module AmzSpApi::VendorDirectFulfillmentOrdersV1
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentOrdersV1.configure do |config|
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
