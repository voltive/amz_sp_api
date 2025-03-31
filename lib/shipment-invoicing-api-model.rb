=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'shipment-invoicing-api-model/api_client'
require 'shipment-invoicing-api-model/api_error'
require 'shipment-invoicing-api-model/version'
require 'shipment-invoicing-api-model/configuration'

# Models
require 'shipment-invoicing-api-model/models/address'
require 'shipment-invoicing-api-model/models/address_type_enum'
require 'shipment-invoicing-api-model/models/blob'
require 'shipment-invoicing-api-model/models/buyer_tax_info'
require 'shipment-invoicing-api-model/models/error'
require 'shipment-invoicing-api-model/models/error_list'
require 'shipment-invoicing-api-model/models/get_invoice_status_response'
require 'shipment-invoicing-api-model/models/get_shipment_details_response'
require 'shipment-invoicing-api-model/models/marketplace_tax_info'
require 'shipment-invoicing-api-model/models/money'
require 'shipment-invoicing-api-model/models/payment_method_detail_item_list'
require 'shipment-invoicing-api-model/models/serial_numbers_list'
require 'shipment-invoicing-api-model/models/shipment_detail'
require 'shipment-invoicing-api-model/models/shipment_invoice_status'
require 'shipment-invoicing-api-model/models/shipment_invoice_status_info'
require 'shipment-invoicing-api-model/models/shipment_invoice_status_response'
require 'shipment-invoicing-api-model/models/shipment_item'
require 'shipment-invoicing-api-model/models/shipment_items'
require 'shipment-invoicing-api-model/models/submit_invoice_request'
require 'shipment-invoicing-api-model/models/submit_invoice_response'
require 'shipment-invoicing-api-model/models/tax_classification'
require 'shipment-invoicing-api-model/models/tax_classification_list'

# APIs
require 'shipment-invoicing-api-model/api/shipment_invoice_api'

module AmzSpApi::ShipmentInvoicingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ShipmentInvoicingApiModel.configure do |config|
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
