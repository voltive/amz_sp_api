=begin
#Amazon Shipping API

#The Amazon Shipping API is designed to support outbound shipping use cases both for orders originating on Amazon-owned marketplaces as well as external channels/marketplaces. With these APIs, you can request shipping rates, create shipments, cancel shipments, and track shipments.

OpenAPI spec version: v2
Contact: swa-api-core@amazon.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::ShippingV2
  class AccessPointType
    HELIX = 'HELIX'.freeze
    CAMPUS_LOCKER = 'CAMPUS_LOCKER'.freeze
    OMNI_LOCKER = 'OMNI_LOCKER'.freeze
    ODIN_LOCKER = 'ODIN_LOCKER'.freeze
    DOBBY_LOCKER = 'DOBBY_LOCKER'.freeze
    CORE_LOCKER = 'CORE_LOCKER'.freeze
    N3_P = '3P'.freeze
    CAMPUS_ROOM = 'CAMPUS_ROOM'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AccessPointType.constants.select { |c| AccessPointType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AccessPointType" if constantValues.empty?
      value
    end
  end
end
