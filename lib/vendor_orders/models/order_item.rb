=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::VendorOrders
  # Represents an individual item in an order, including item details, quantities, pricing, and backorder information.
  class OrderItem
    # Numbering of the item on the purchase order. The first item will be 1, the second 2, and so on.
    attr_accessor :item_sequence_number

    # Amazon Standard Identification Number (ASIN) of an item.
    attr_accessor :amazon_product_identifier

    # The vendor selected product identification of the item.
    attr_accessor :vendor_product_identifier

    attr_accessor :ordered_quantity

    # When true, we will accept backorder confirmations for this item.
    attr_accessor :is_back_order_allowed

    attr_accessor :net_cost

    attr_accessor :list_price

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_sequence_number' => :'itemSequenceNumber',
        :'amazon_product_identifier' => :'amazonProductIdentifier',
        :'vendor_product_identifier' => :'vendorProductIdentifier',
        :'ordered_quantity' => :'orderedQuantity',
        :'is_back_order_allowed' => :'isBackOrderAllowed',
        :'net_cost' => :'netCost',
        :'list_price' => :'listPrice'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'item_sequence_number' => :'Object',
        :'amazon_product_identifier' => :'Object',
        :'vendor_product_identifier' => :'Object',
        :'ordered_quantity' => :'Object',
        :'is_back_order_allowed' => :'Object',
        :'net_cost' => :'Object',
        :'list_price' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorOrders::OrderItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorOrders::OrderItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'item_sequence_number')
        self.item_sequence_number = attributes[:'item_sequence_number']
      end

      if attributes.key?(:'amazon_product_identifier')
        self.amazon_product_identifier = attributes[:'amazon_product_identifier']
      end

      if attributes.key?(:'vendor_product_identifier')
        self.vendor_product_identifier = attributes[:'vendor_product_identifier']
      end

      if attributes.key?(:'ordered_quantity')
        self.ordered_quantity = attributes[:'ordered_quantity']
      end

      if attributes.key?(:'is_back_order_allowed')
        self.is_back_order_allowed = attributes[:'is_back_order_allowed']
      end

      if attributes.key?(:'net_cost')
        self.net_cost = attributes[:'net_cost']
      end

      if attributes.key?(:'list_price')
        self.list_price = attributes[:'list_price']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @item_sequence_number.nil?
        invalid_properties.push('invalid value for "item_sequence_number", item_sequence_number cannot be nil.')
      end

      if @ordered_quantity.nil?
        invalid_properties.push('invalid value for "ordered_quantity", ordered_quantity cannot be nil.')
      end

      if @is_back_order_allowed.nil?
        invalid_properties.push('invalid value for "is_back_order_allowed", is_back_order_allowed cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_sequence_number.nil?
      return false if @ordered_quantity.nil?
      return false if @is_back_order_allowed.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_sequence_number == o.item_sequence_number &&
          amazon_product_identifier == o.amazon_product_identifier &&
          vendor_product_identifier == o.vendor_product_identifier &&
          ordered_quantity == o.ordered_quantity &&
          is_back_order_allowed == o.is_back_order_allowed &&
          net_cost == o.net_cost &&
          list_price == o.list_price
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [item_sequence_number, amazon_product_identifier, vendor_product_identifier, ordered_quantity, is_back_order_allowed, net_cost, list_price].hash
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
        AmzSpApi::VendorOrders.const_get(type).build_from_hash(value)
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
