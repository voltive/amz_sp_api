=begin
#Selling Partner API for Orders

#Use the Orders Selling Partner API to programmatically retrieve order information. With this API, you can develop fast, flexible, and custom applications to manage order synchronization, perform order research, and create demand-based decision support tools.   _Note:_ For the JP, AU, and SG marketplaces, the Orders API supports orders from 2016 onward. For all other marketplaces, the Orders API supports orders for the last two years (orders older than this don't show up in the response).

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::OrdersApiModel
  class AssociationType
    VALUE_ADD_SERVICE = 'VALUE_ADD_SERVICE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AssociationType.constants.select { |c| AssociationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AssociationType" if constantValues.empty?
      value
    end
  end
end
