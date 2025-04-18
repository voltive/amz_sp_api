=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::FulfillmentOutbound20200701
  class EventCode
    N101 = 'EVENT_101'.freeze
    N102 = 'EVENT_102'.freeze
    N201 = 'EVENT_201'.freeze
    N202 = 'EVENT_202'.freeze
    N203 = 'EVENT_203'.freeze
    N204 = 'EVENT_204'.freeze
    N205 = 'EVENT_205'.freeze
    N206 = 'EVENT_206'.freeze
    N301 = 'EVENT_301'.freeze
    N302 = 'EVENT_302'.freeze
    N304 = 'EVENT_304'.freeze
    N306 = 'EVENT_306'.freeze
    N307 = 'EVENT_307'.freeze
    N308 = 'EVENT_308'.freeze
    N309 = 'EVENT_309'.freeze
    N401 = 'EVENT_401'.freeze
    N402 = 'EVENT_402'.freeze
    N403 = 'EVENT_403'.freeze
    N404 = 'EVENT_404'.freeze
    N405 = 'EVENT_405'.freeze
    N406 = 'EVENT_406'.freeze
    N407 = 'EVENT_407'.freeze
    N408 = 'EVENT_408'.freeze
    N409 = 'EVENT_409'.freeze
    N411 = 'EVENT_411'.freeze
    N412 = 'EVENT_412'.freeze
    N413 = 'EVENT_413'.freeze
    N414 = 'EVENT_414'.freeze
    N415 = 'EVENT_415'.freeze
    N416 = 'EVENT_416'.freeze
    N417 = 'EVENT_417'.freeze
    N418 = 'EVENT_418'.freeze
    N419 = 'EVENT_419'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EventCode.constants.select { |c| EventCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EventCode" if constantValues.empty?
      value
    end
  end
end
