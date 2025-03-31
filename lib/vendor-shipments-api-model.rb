=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'vendor-shipments-api-model/api_client'
require 'vendor-shipments-api-model/api_error'
require 'vendor-shipments-api-model/version'
require 'vendor-shipments-api-model/configuration'

# Models
require 'vendor-shipments-api-model/models/address'
require 'vendor-shipments-api-model/models/carrier_details'
require 'vendor-shipments-api-model/models/carton'
require 'vendor-shipments-api-model/models/carton_reference_details'
require 'vendor-shipments-api-model/models/collect_freight_pickup_details'
require 'vendor-shipments-api-model/models/container_identification'
require 'vendor-shipments-api-model/models/container_item'
require 'vendor-shipments-api-model/models/container_sequence_numbers'
require 'vendor-shipments-api-model/models/containers'
require 'vendor-shipments-api-model/models/decimal'
require 'vendor-shipments-api-model/models/dimensions'
require 'vendor-shipments-api-model/models/duration'
require 'vendor-shipments-api-model/models/error'
require 'vendor-shipments-api-model/models/error_list'
require 'vendor-shipments-api-model/models/expiry'
require 'vendor-shipments-api-model/models/get_shipment_details_response'
require 'vendor-shipments-api-model/models/get_shipment_labels'
require 'vendor-shipments-api-model/models/import_details'
require 'vendor-shipments-api-model/models/inner_containers_details'
require 'vendor-shipments-api-model/models/item'
require 'vendor-shipments-api-model/models/item_details'
require 'vendor-shipments-api-model/models/item_quantity'
require 'vendor-shipments-api-model/models/label_data'
require 'vendor-shipments-api-model/models/location'
require 'vendor-shipments-api-model/models/money'
require 'vendor-shipments-api-model/models/package_item_details'
require 'vendor-shipments-api-model/models/packed_items'
require 'vendor-shipments-api-model/models/packed_quantity'
require 'vendor-shipments-api-model/models/pagination'
require 'vendor-shipments-api-model/models/pallet'
require 'vendor-shipments-api-model/models/party_identification'
require 'vendor-shipments-api-model/models/purchase_order_item_details'
require 'vendor-shipments-api-model/models/purchase_order_items'
require 'vendor-shipments-api-model/models/purchase_orders'
require 'vendor-shipments-api-model/models/route'
require 'vendor-shipments-api-model/models/shipment'
require 'vendor-shipments-api-model/models/shipment_confirmation'
require 'vendor-shipments-api-model/models/shipment_details'
require 'vendor-shipments-api-model/models/shipment_information'
require 'vendor-shipments-api-model/models/shipment_measurements'
require 'vendor-shipments-api-model/models/shipment_status_details'
require 'vendor-shipments-api-model/models/stop'
require 'vendor-shipments-api-model/models/submit_shipment_confirmations_request'
require 'vendor-shipments-api-model/models/submit_shipment_confirmations_response'
require 'vendor-shipments-api-model/models/submit_shipments'
require 'vendor-shipments-api-model/models/tax_registration_details'
require 'vendor-shipments-api-model/models/total_weight'
require 'vendor-shipments-api-model/models/transaction_reference'
require 'vendor-shipments-api-model/models/transport_label'
require 'vendor-shipments-api-model/models/transport_shipment_measurements'
require 'vendor-shipments-api-model/models/transportation_details'
require 'vendor-shipments-api-model/models/transportation_details_for_shipment_confirmation'
require 'vendor-shipments-api-model/models/transportation_labels'
require 'vendor-shipments-api-model/models/vendor_details'
require 'vendor-shipments-api-model/models/volume'
require 'vendor-shipments-api-model/models/weight'

# APIs
require 'vendor-shipments-api-model/api/vendor_shipping_api'

module AmzSpApi::VendorShipmentsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorShipmentsApiModel.configure do |config|
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
