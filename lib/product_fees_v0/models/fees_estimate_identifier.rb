=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::ProductFeesV0
  # An item identifier, marketplace, time of request, and other details that identify an estimate.
  class FeesEstimateIdentifier
    # A marketplace identifier.
    attr_accessor :marketplace_id

    # The seller identifier.
    attr_accessor :seller_id

    attr_accessor :id_type

    # The item identifier.
    attr_accessor :id_value

    # When true, the offer is fulfilled by Amazon.
    attr_accessor :is_amazon_fulfilled

    attr_accessor :price_to_estimate_fees

    # A unique identifier provided by the caller to track this request.
    attr_accessor :seller_input_identifier

    attr_accessor :optional_fulfillment_program

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'marketplace_id' => :'MarketplaceId',
        :'seller_id' => :'SellerId',
        :'id_type' => :'IdType',
        :'id_value' => :'IdValue',
        :'is_amazon_fulfilled' => :'IsAmazonFulfilled',
        :'price_to_estimate_fees' => :'PriceToEstimateFees',
        :'seller_input_identifier' => :'SellerInputIdentifier',
        :'optional_fulfillment_program' => :'OptionalFulfillmentProgram'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'marketplace_id' => :'Object',
        :'seller_id' => :'Object',
        :'id_type' => :'Object',
        :'id_value' => :'Object',
        :'is_amazon_fulfilled' => :'Object',
        :'price_to_estimate_fees' => :'Object',
        :'seller_input_identifier' => :'Object',
        :'optional_fulfillment_program' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::ProductFeesV0::FeesEstimateIdentifier` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::ProductFeesV0::FeesEstimateIdentifier`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'seller_id')
        self.seller_id = attributes[:'seller_id']
      end

      if attributes.key?(:'id_type')
        self.id_type = attributes[:'id_type']
      end

      if attributes.key?(:'id_value')
        self.id_value = attributes[:'id_value']
      end

      if attributes.key?(:'is_amazon_fulfilled')
        self.is_amazon_fulfilled = attributes[:'is_amazon_fulfilled']
      end

      if attributes.key?(:'price_to_estimate_fees')
        self.price_to_estimate_fees = attributes[:'price_to_estimate_fees']
      end

      if attributes.key?(:'seller_input_identifier')
        self.seller_input_identifier = attributes[:'seller_input_identifier']
      end

      if attributes.key?(:'optional_fulfillment_program')
        self.optional_fulfillment_program = attributes[:'optional_fulfillment_program']
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
          marketplace_id == o.marketplace_id &&
          seller_id == o.seller_id &&
          id_type == o.id_type &&
          id_value == o.id_value &&
          is_amazon_fulfilled == o.is_amazon_fulfilled &&
          price_to_estimate_fees == o.price_to_estimate_fees &&
          seller_input_identifier == o.seller_input_identifier &&
          optional_fulfillment_program == o.optional_fulfillment_program
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [marketplace_id, seller_id, id_type, id_value, is_amazon_fulfilled, price_to_estimate_fees, seller_input_identifier, optional_fulfillment_program].hash
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
        AmzSpApi::ProductFeesV0.const_get(type).build_from_hash(value)
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
