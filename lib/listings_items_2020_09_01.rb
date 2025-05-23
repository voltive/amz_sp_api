=begin
#Selling Partner API for Listings Items

#The Selling Partner API for Listings Items (Listings Items API) provides programmatic access to selling partner listings on Amazon. Use this API in collaboration with the Selling Partner API for Product Type Definitions, which you use to retrieve the information about Amazon product types needed to use the Listings Items API.  For more information, see the [Listing Items API Use Case Guide](doc:listings-items-api-v2020-09-01-use-case-guide).

OpenAPI spec version: 2020-09-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'listings_items_2020_09_01/api_client'
require 'listings_items_2020_09_01/api_error'
require 'listings_items_2020_09_01/version'
require 'listings_items_2020_09_01/configuration'

# Models
require 'listings_items_2020_09_01/models/error'
require 'listings_items_2020_09_01/models/error_list'
require 'listings_items_2020_09_01/models/issue'
require 'listings_items_2020_09_01/models/listings_item_patch_request'
require 'listings_items_2020_09_01/models/listings_item_put_request'
require 'listings_items_2020_09_01/models/listings_item_submission_response'
require 'listings_items_2020_09_01/models/patch_operation'

# APIs
require 'listings_items_2020_09_01/api/listings_api'

module AmzSpApi::ListingsItems20200901
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ListingsItems20200901.configure do |config|
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
