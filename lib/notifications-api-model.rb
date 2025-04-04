=begin
#Selling Partner API for Notifications

#The Selling Partner API for Notifications lets you subscribe to notifications that are relevant to a selling partner's business. Using this API you can create a destination to receive notifications, subscribe to notifications, delete notification subscriptions, and more.  For more information, refer to the [Notifications Use Case Guide](https://developer-docs.amazon.com/sp-api/docs/notifications-api-v1-use-case-guide).

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'notifications-api-model/api_client'
require 'notifications-api-model/api_error'
require 'notifications-api-model/version'
require 'notifications-api-model/configuration'

# Models
require 'notifications-api-model/models/aggregation_filter'
require 'notifications-api-model/models/aggregation_settings'
require 'notifications-api-model/models/aggregation_time_period'
require 'notifications-api-model/models/create_destination_request'
require 'notifications-api-model/models/create_destination_response'
require 'notifications-api-model/models/create_subscription_request'
require 'notifications-api-model/models/create_subscription_response'
require 'notifications-api-model/models/delete_destination_response'
require 'notifications-api-model/models/delete_subscription_by_id_response'
require 'notifications-api-model/models/destination'
require 'notifications-api-model/models/destination_list'
require 'notifications-api-model/models/destination_resource'
require 'notifications-api-model/models/destination_resource_specification'
require 'notifications-api-model/models/error'
require 'notifications-api-model/models/error_list'
require 'notifications-api-model/models/event_bridge_resource'
require 'notifications-api-model/models/event_bridge_resource_specification'
require 'notifications-api-model/models/event_filter'
require 'notifications-api-model/models/get_destination_response'
require 'notifications-api-model/models/get_destinations_response'
require 'notifications-api-model/models/get_subscription_by_id_response'
require 'notifications-api-model/models/get_subscription_response'
require 'notifications-api-model/models/marketplace_filter'
require 'notifications-api-model/models/marketplace_ids'
require 'notifications-api-model/models/order_change_type_enum'
require 'notifications-api-model/models/order_change_type_filter'
require 'notifications-api-model/models/order_change_types'
require 'notifications-api-model/models/processing_directive'
require 'notifications-api-model/models/sqs_resource'
require 'notifications-api-model/models/subscription'

# APIs
require 'notifications-api-model/api/notifications_api'

module AmzSpApi::NotificationsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::NotificationsApiModel.configure do |config|
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
