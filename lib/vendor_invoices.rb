=begin
#Selling Partner API for Retail Procurement Payments

#The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'vendor_invoices/api_client'
require 'vendor_invoices/api_error'
require 'vendor_invoices/version'
require 'vendor_invoices/configuration'

# Models
require 'vendor_invoices/models/additional_details'
require 'vendor_invoices/models/address'
require 'vendor_invoices/models/allowance_details'
require 'vendor_invoices/models/charge_details'
require 'vendor_invoices/models/credit_note_details'
require 'vendor_invoices/models/date_time'
require 'vendor_invoices/models/decimal'
require 'vendor_invoices/models/error'
require 'vendor_invoices/models/error_list'
require 'vendor_invoices/models/invoice'
require 'vendor_invoices/models/invoice_item'
require 'vendor_invoices/models/item_quantity'
require 'vendor_invoices/models/money'
require 'vendor_invoices/models/net_cost_unit_of_measure'
require 'vendor_invoices/models/party_identification'
require 'vendor_invoices/models/payment_terms'
require 'vendor_invoices/models/submit_invoices_request'
require 'vendor_invoices/models/submit_invoices_response'
require 'vendor_invoices/models/tax_details'
require 'vendor_invoices/models/tax_registration_details'
require 'vendor_invoices/models/total_weight'
require 'vendor_invoices/models/transaction_id'

# APIs
require 'vendor_invoices/api/vendor_payments_api'

module AmzSpApi::VendorInvoices
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorInvoices.configure do |config|
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
