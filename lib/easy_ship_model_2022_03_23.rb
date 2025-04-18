=begin
#Selling Partner API for Easy Ship

#Use the Selling Partner API for Easy Ship to build applications for sellers to manage and ship Amazon Easy Ship orders. With this API, you can get available time slots, schedule and reschedule Easy Ship orders, and print shipping labels, invoices, and warranties. To review the differences in Easy Ship operations by marketplace, refer to [Marketplace support](https://developer-docs.amazon.com/sp-api/docs/easyship-api-v2022-03-23-use-case-guide#marketplace-support).

OpenAPI spec version: 2022-03-23

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'easy_ship_model_2022_03_23/api_client'
require 'easy_ship_model_2022_03_23/api_error'
require 'easy_ship_model_2022_03_23/version'
require 'easy_ship_model_2022_03_23/configuration'

# Models
require 'easy_ship_model_2022_03_23/models/amazon_order_id'
require 'easy_ship_model_2022_03_23/models/code'
require 'easy_ship_model_2022_03_23/models/create_scheduled_package_request'
require 'easy_ship_model_2022_03_23/models/create_scheduled_packages_request'
require 'easy_ship_model_2022_03_23/models/create_scheduled_packages_response'
require 'easy_ship_model_2022_03_23/models/date_time'
require 'easy_ship_model_2022_03_23/models/dimension'
require 'easy_ship_model_2022_03_23/models/dimensions'
require 'easy_ship_model_2022_03_23/models/error'
require 'easy_ship_model_2022_03_23/models/error_list'
require 'easy_ship_model_2022_03_23/models/handover_method'
require 'easy_ship_model_2022_03_23/models/invoice_data'
require 'easy_ship_model_2022_03_23/models/item'
require 'easy_ship_model_2022_03_23/models/items'
require 'easy_ship_model_2022_03_23/models/label_format'
require 'easy_ship_model_2022_03_23/models/list_handover_slots_request'
require 'easy_ship_model_2022_03_23/models/list_handover_slots_response'
require 'easy_ship_model_2022_03_23/models/order_item_id'
require 'easy_ship_model_2022_03_23/models/order_item_serial_number'
require 'easy_ship_model_2022_03_23/models/order_item_serial_numbers'
require 'easy_ship_model_2022_03_23/models/order_schedule_details'
require 'easy_ship_model_2022_03_23/models/package'
require 'easy_ship_model_2022_03_23/models/package_details'
require 'easy_ship_model_2022_03_23/models/package_id'
require 'easy_ship_model_2022_03_23/models/package_identifier'
require 'easy_ship_model_2022_03_23/models/package_status'
require 'easy_ship_model_2022_03_23/models/packages'
require 'easy_ship_model_2022_03_23/models/rejected_order'
require 'easy_ship_model_2022_03_23/models/scheduled_package_id'
require 'easy_ship_model_2022_03_23/models/string'
require 'easy_ship_model_2022_03_23/models/time_slot'
require 'easy_ship_model_2022_03_23/models/time_slots'
require 'easy_ship_model_2022_03_23/models/tracking_details'
require 'easy_ship_model_2022_03_23/models/url'
require 'easy_ship_model_2022_03_23/models/unit_of_length'
require 'easy_ship_model_2022_03_23/models/unit_of_weight'
require 'easy_ship_model_2022_03_23/models/update_package_details'
require 'easy_ship_model_2022_03_23/models/update_package_details_list'
require 'easy_ship_model_2022_03_23/models/update_scheduled_packages_request'
require 'easy_ship_model_2022_03_23/models/weight'
require 'easy_ship_model_2022_03_23/models/weight_value'

# APIs
require 'easy_ship_model_2022_03_23/api/easy_ship_api'

module AmzSpApi::EasyShipModel20220323
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::EasyShipModel20220323.configure do |config|
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
