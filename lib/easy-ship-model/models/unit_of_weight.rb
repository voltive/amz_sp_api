=begin
#Selling Partner API for Easy Ship

#Use the Selling Partner API for Easy Ship to build applications for sellers to manage and ship Amazon Easy Ship orders. With this API, you can get available time slots, schedule and reschedule Easy Ship orders, and print shipping labels, invoices, and warranties. To review the differences in Easy Ship operations by marketplace, refer to [Marketplace support](https://developer-docs.amazon.com/sp-api/docs/easyship-api-v2022-03-23-use-case-guide#marketplace-support).

OpenAPI spec version: 2022-03-23

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::EasyShipModel
  class UnitOfWeight
    GRAMS = 'Grams'.freeze
    G = 'G'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = UnitOfWeight.constants.select { |c| UnitOfWeight::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #UnitOfWeight" if constantValues.empty?
      value
    end
  end
end
