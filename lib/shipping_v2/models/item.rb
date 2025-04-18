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
  # An item in a package.
  class Item
    attr_accessor :item_value

    # The product description of the item.
    attr_accessor :description

    # A unique identifier for an item provided by the client.
    attr_accessor :item_identifier

    # The number of units. This value is required.
    attr_accessor :quantity

    attr_accessor :weight

    attr_accessor :liquid_volume

    # When true, the item qualifies as hazardous materials (hazmat). Defaults to false.
    attr_accessor :is_hazmat

    attr_accessor :dangerous_goods_details

    # The product type of the item.
    attr_accessor :product_type

    attr_accessor :invoice_details

    # A list of unique serial numbers in an Amazon package that can be used to guarantee non-fraudulent items. The number of serial numbers in the list must be less than or equal to the quantity of items being shipped. Only applicable when channel source is Amazon.
    attr_accessor :serial_numbers

    attr_accessor :direct_fulfillment_item_identifiers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_value' => :'itemValue',
        :'description' => :'description',
        :'item_identifier' => :'itemIdentifier',
        :'quantity' => :'quantity',
        :'weight' => :'weight',
        :'liquid_volume' => :'liquidVolume',
        :'is_hazmat' => :'isHazmat',
        :'dangerous_goods_details' => :'dangerousGoodsDetails',
        :'product_type' => :'productType',
        :'invoice_details' => :'invoiceDetails',
        :'serial_numbers' => :'serialNumbers',
        :'direct_fulfillment_item_identifiers' => :'directFulfillmentItemIdentifiers'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'item_value' => :'Object',
        :'description' => :'Object',
        :'item_identifier' => :'Object',
        :'quantity' => :'Object',
        :'weight' => :'Object',
        :'liquid_volume' => :'Object',
        :'is_hazmat' => :'Object',
        :'dangerous_goods_details' => :'Object',
        :'product_type' => :'Object',
        :'invoice_details' => :'Object',
        :'serial_numbers' => :'Object',
        :'direct_fulfillment_item_identifiers' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::ShippingV2::Item` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::ShippingV2::Item`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'item_value')
        self.item_value = attributes[:'item_value']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'item_identifier')
        self.item_identifier = attributes[:'item_identifier']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'liquid_volume')
        self.liquid_volume = attributes[:'liquid_volume']
      end

      if attributes.key?(:'is_hazmat')
        self.is_hazmat = attributes[:'is_hazmat']
      end

      if attributes.key?(:'dangerous_goods_details')
        self.dangerous_goods_details = attributes[:'dangerous_goods_details']
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'invoice_details')
        self.invoice_details = attributes[:'invoice_details']
      end

      if attributes.key?(:'serial_numbers')
        if (value = attributes[:'serial_numbers']).is_a?(Array)
          self.serial_numbers = value
        end
      end

      if attributes.key?(:'direct_fulfillment_item_identifiers')
        self.direct_fulfillment_item_identifiers = attributes[:'direct_fulfillment_item_identifiers']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @quantity.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_value == o.item_value &&
          description == o.description &&
          item_identifier == o.item_identifier &&
          quantity == o.quantity &&
          weight == o.weight &&
          liquid_volume == o.liquid_volume &&
          is_hazmat == o.is_hazmat &&
          dangerous_goods_details == o.dangerous_goods_details &&
          product_type == o.product_type &&
          invoice_details == o.invoice_details &&
          serial_numbers == o.serial_numbers &&
          direct_fulfillment_item_identifiers == o.direct_fulfillment_item_identifiers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [item_value, description, item_identifier, quantity, weight, liquid_volume, is_hazmat, dangerous_goods_details, product_type, invoice_details, serial_numbers, direct_fulfillment_item_identifiers].hash
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
        AmzSpApi::ShippingV2.const_get(type).build_from_hash(value)
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
