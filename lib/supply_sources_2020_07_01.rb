=begin
#Selling Partner API for Supply Sources

#Manage configurations and capabilities of seller supply sources.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'supply_sources_2020_07_01/api_client'
require 'supply_sources_2020_07_01/api_error'
require 'supply_sources_2020_07_01/version'
require 'supply_sources_2020_07_01/configuration'

# Models
require 'supply_sources_2020_07_01/models/address'
require 'supply_sources_2020_07_01/models/address_with_contact'
require 'supply_sources_2020_07_01/models/contact_details'
require 'supply_sources_2020_07_01/models/contact_details_primary'
require 'supply_sources_2020_07_01/models/create_supply_source_request'
require 'supply_sources_2020_07_01/models/create_supply_source_response'
require 'supply_sources_2020_07_01/models/curbside_pickup_configuration'
require 'supply_sources_2020_07_01/models/date_time'
require 'supply_sources_2020_07_01/models/delivery_channel'
require 'supply_sources_2020_07_01/models/duration'
require 'supply_sources_2020_07_01/models/email_address'
require 'supply_sources_2020_07_01/models/error'
require 'supply_sources_2020_07_01/models/error_list'
require 'supply_sources_2020_07_01/models/get_supply_sources_response'
require 'supply_sources_2020_07_01/models/in_store_pickup_configuration'
require 'supply_sources_2020_07_01/models/non_negative_integer'
require 'supply_sources_2020_07_01/models/operating_hour'
require 'supply_sources_2020_07_01/models/operating_hours'
require 'supply_sources_2020_07_01/models/operating_hours_by_day'
require 'supply_sources_2020_07_01/models/operational_configuration'
require 'supply_sources_2020_07_01/models/outbound_capability'
require 'supply_sources_2020_07_01/models/parking_configuration'
require 'supply_sources_2020_07_01/models/parking_cost_type'
require 'supply_sources_2020_07_01/models/parking_spot_identification_type'
require 'supply_sources_2020_07_01/models/parking_with_address_configuration'
require 'supply_sources_2020_07_01/models/pickup_channel'
require 'supply_sources_2020_07_01/models/return_location'
require 'supply_sources_2020_07_01/models/services_capability'
require 'supply_sources_2020_07_01/models/supply_source'
require 'supply_sources_2020_07_01/models/supply_source_alias'
require 'supply_sources_2020_07_01/models/supply_source_capabilities'
require 'supply_sources_2020_07_01/models/supply_source_code'
require 'supply_sources_2020_07_01/models/supply_source_configuration'
require 'supply_sources_2020_07_01/models/supply_source_id'
require 'supply_sources_2020_07_01/models/supply_source_list'
require 'supply_sources_2020_07_01/models/supply_source_list_inner'
require 'supply_sources_2020_07_01/models/supply_source_status'
require 'supply_sources_2020_07_01/models/supply_source_status_read_only'
require 'supply_sources_2020_07_01/models/throughput_cap'
require 'supply_sources_2020_07_01/models/throughput_config'
require 'supply_sources_2020_07_01/models/throughput_unit'
require 'supply_sources_2020_07_01/models/time_unit'
require 'supply_sources_2020_07_01/models/update_supply_source_request'
require 'supply_sources_2020_07_01/models/update_supply_source_status_request'

# APIs
require 'supply_sources_2020_07_01/api/supply_sources_api'

module AmzSpApi::SupplySources20200701
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::SupplySources20200701.configure do |config|
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
