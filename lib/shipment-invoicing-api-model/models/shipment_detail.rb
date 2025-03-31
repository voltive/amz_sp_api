=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::ShipmentInvoicingApiModel
  # The information required by a selling partner to issue a shipment invoice.
  class ShipmentDetail
    # The Amazon-defined identifier for the warehouse.
    attr_accessor :warehouse_id

    # The Amazon-defined identifier for the order.
    attr_accessor :amazon_order_id

    # The Amazon-defined identifier for the shipment.
    attr_accessor :amazon_shipment_id

    # The date and time when the order was created.
    attr_accessor :purchase_date

    attr_accessor :shipping_address

    attr_accessor :payment_method_details

    # The identifier for the marketplace where the order was placed.
    attr_accessor :marketplace_id

    # The seller identifier.
    attr_accessor :seller_id

    # The name of the buyer.
    attr_accessor :buyer_name

    # The county of the buyer.
    attr_accessor :buyer_county

    attr_accessor :buyer_tax_info

    attr_accessor :marketplace_tax_info

    # The seller’s friendly name registered in the marketplace.
    attr_accessor :seller_display_name

    attr_accessor :shipment_items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'warehouse_id' => :'WarehouseId',
        :'amazon_order_id' => :'AmazonOrderId',
        :'amazon_shipment_id' => :'AmazonShipmentId',
        :'purchase_date' => :'PurchaseDate',
        :'shipping_address' => :'ShippingAddress',
        :'payment_method_details' => :'PaymentMethodDetails',
        :'marketplace_id' => :'MarketplaceId',
        :'seller_id' => :'SellerId',
        :'buyer_name' => :'BuyerName',
        :'buyer_county' => :'BuyerCounty',
        :'buyer_tax_info' => :'BuyerTaxInfo',
        :'marketplace_tax_info' => :'MarketplaceTaxInfo',
        :'seller_display_name' => :'SellerDisplayName',
        :'shipment_items' => :'ShipmentItems'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'warehouse_id' => :'Object',
        :'amazon_order_id' => :'Object',
        :'amazon_shipment_id' => :'Object',
        :'purchase_date' => :'Object',
        :'shipping_address' => :'Object',
        :'payment_method_details' => :'Object',
        :'marketplace_id' => :'Object',
        :'seller_id' => :'Object',
        :'buyer_name' => :'Object',
        :'buyer_county' => :'Object',
        :'buyer_tax_info' => :'Object',
        :'marketplace_tax_info' => :'Object',
        :'seller_display_name' => :'Object',
        :'shipment_items' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::ShipmentInvoicingApiModel::ShipmentDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::ShipmentInvoicingApiModel::ShipmentDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'warehouse_id')
        self.warehouse_id = attributes[:'warehouse_id']
      end

      if attributes.key?(:'amazon_order_id')
        self.amazon_order_id = attributes[:'amazon_order_id']
      end

      if attributes.key?(:'amazon_shipment_id')
        self.amazon_shipment_id = attributes[:'amazon_shipment_id']
      end

      if attributes.key?(:'purchase_date')
        self.purchase_date = attributes[:'purchase_date']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'payment_method_details')
        self.payment_method_details = attributes[:'payment_method_details']
      end

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'seller_id')
        self.seller_id = attributes[:'seller_id']
      end

      if attributes.key?(:'buyer_name')
        self.buyer_name = attributes[:'buyer_name']
      end

      if attributes.key?(:'buyer_county')
        self.buyer_county = attributes[:'buyer_county']
      end

      if attributes.key?(:'buyer_tax_info')
        self.buyer_tax_info = attributes[:'buyer_tax_info']
      end

      if attributes.key?(:'marketplace_tax_info')
        self.marketplace_tax_info = attributes[:'marketplace_tax_info']
      end

      if attributes.key?(:'seller_display_name')
        self.seller_display_name = attributes[:'seller_display_name']
      end

      if attributes.key?(:'shipment_items')
        self.shipment_items = attributes[:'shipment_items']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          warehouse_id == o.warehouse_id &&
          amazon_order_id == o.amazon_order_id &&
          amazon_shipment_id == o.amazon_shipment_id &&
          purchase_date == o.purchase_date &&
          shipping_address == o.shipping_address &&
          payment_method_details == o.payment_method_details &&
          marketplace_id == o.marketplace_id &&
          seller_id == o.seller_id &&
          buyer_name == o.buyer_name &&
          buyer_county == o.buyer_county &&
          buyer_tax_info == o.buyer_tax_info &&
          marketplace_tax_info == o.marketplace_tax_info &&
          seller_display_name == o.seller_display_name &&
          shipment_items == o.shipment_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [warehouse_id, amazon_order_id, amazon_shipment_id, purchase_date, shipping_address, payment_method_details, marketplace_id, seller_id, buyer_name, buyer_county, buyer_tax_info, marketplace_tax_info, seller_display_name, shipment_items].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AmzSpApi::ShipmentInvoicingApiModel.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
