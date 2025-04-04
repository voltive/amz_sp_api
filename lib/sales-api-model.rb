=begin
#Selling Partner API for Sales

#The Selling Partner API for Sales provides APIs related to sales performance.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'sales-api-model/api_client'
require 'sales-api-model/api_error'
require 'sales-api-model/version'
require 'sales-api-model/configuration'

# Models
require 'sales-api-model/models/decimal'
require 'sales-api-model/models/error'
require 'sales-api-model/models/error_list'
require 'sales-api-model/models/get_order_metrics_response'
require 'sales-api-model/models/money'
require 'sales-api-model/models/order_metrics_interval'
require 'sales-api-model/models/order_metrics_list'

# APIs
require 'sales-api-model/api/sales_api'

module AmzSpApi::SalesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::SalesApiModel.configure do |config|
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
