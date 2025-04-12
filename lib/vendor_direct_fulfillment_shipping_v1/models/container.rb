=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::VendorDirectFulfillmentShippingV1
  # A container used for shipping and packing items.
  class Container
    # The type of container.
    attr_accessor :container_type

    # The container identifier.
    attr_accessor :container_identifier

    # The tracking number.
    attr_accessor :tracking_number

    # The manifest identifier.
    attr_accessor :manifest_id

    # The date of the manifest.
    attr_accessor :manifest_date

    # The shipment method.
    attr_accessor :ship_method

    # SCAC code required for NA VOC vendors only.
    attr_accessor :scac_code

    # Carrier required for EU VOC vendors only.
    attr_accessor :carrier

    # An integer that must be submitted for multi-box shipments only, where one item may come in separate packages.
    attr_accessor :container_sequence_number

    attr_accessor :dimensions

    attr_accessor :weight

    # A list of packed items.
    attr_accessor :packed_items

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'container_type' => :'containerType',
        :'container_identifier' => :'containerIdentifier',
        :'tracking_number' => :'trackingNumber',
        :'manifest_id' => :'manifestId',
        :'manifest_date' => :'manifestDate',
        :'ship_method' => :'shipMethod',
        :'scac_code' => :'scacCode',
        :'carrier' => :'carrier',
        :'container_sequence_number' => :'containerSequenceNumber',
        :'dimensions' => :'dimensions',
        :'weight' => :'weight',
        :'packed_items' => :'packedItems'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'container_type' => :'Object',
        :'container_identifier' => :'Object',
        :'tracking_number' => :'Object',
        :'manifest_id' => :'Object',
        :'manifest_date' => :'Object',
        :'ship_method' => :'Object',
        :'scac_code' => :'Object',
        :'carrier' => :'Object',
        :'container_sequence_number' => :'Object',
        :'dimensions' => :'Object',
        :'weight' => :'Object',
        :'packed_items' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorDirectFulfillmentShippingV1::Container` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorDirectFulfillmentShippingV1::Container`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'container_type')
        self.container_type = attributes[:'container_type']
      end

      if attributes.key?(:'container_identifier')
        self.container_identifier = attributes[:'container_identifier']
      end

      if attributes.key?(:'tracking_number')
        self.tracking_number = attributes[:'tracking_number']
      end

      if attributes.key?(:'manifest_id')
        self.manifest_id = attributes[:'manifest_id']
      end

      if attributes.key?(:'manifest_date')
        self.manifest_date = attributes[:'manifest_date']
      end

      if attributes.key?(:'ship_method')
        self.ship_method = attributes[:'ship_method']
      end

      if attributes.key?(:'scac_code')
        self.scac_code = attributes[:'scac_code']
      end

      if attributes.key?(:'carrier')
        self.carrier = attributes[:'carrier']
      end

      if attributes.key?(:'container_sequence_number')
        self.container_sequence_number = attributes[:'container_sequence_number']
      end

      if attributes.key?(:'dimensions')
        self.dimensions = attributes[:'dimensions']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'packed_items')
        if (value = attributes[:'packed_items']).is_a?(Array)
          self.packed_items = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @container_type.nil?
        invalid_properties.push('invalid value for "container_type", container_type cannot be nil.')
      end

      if @container_identifier.nil?
        invalid_properties.push('invalid value for "container_identifier", container_identifier cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      if @packed_items.nil?
        invalid_properties.push('invalid value for "packed_items", packed_items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @container_type.nil?
      container_type_validator = EnumAttributeValidator.new('Object', ['carton', 'pallet'])
      return false unless container_type_validator.valid?(@container_type)
      return false if @container_identifier.nil?
      return false if @weight.nil?
      return false if @packed_items.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] container_type Object to be assigned
    def container_type=(container_type)
      validator = EnumAttributeValidator.new('Object', ['carton', 'pallet'])
      unless validator.valid?(container_type)
        fail ArgumentError, "invalid value for \"container_type\", must be one of #{validator.allowable_values}."
      end
      @container_type = container_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          container_type == o.container_type &&
          container_identifier == o.container_identifier &&
          tracking_number == o.tracking_number &&
          manifest_id == o.manifest_id &&
          manifest_date == o.manifest_date &&
          ship_method == o.ship_method &&
          scac_code == o.scac_code &&
          carrier == o.carrier &&
          container_sequence_number == o.container_sequence_number &&
          dimensions == o.dimensions &&
          weight == o.weight &&
          packed_items == o.packed_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [container_type, container_identifier, tracking_number, manifest_id, manifest_date, ship_method, scac_code, carrier, container_sequence_number, dimensions, weight, packed_items].hash
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
        AmzSpApi::VendorDirectFulfillmentShippingV1.const_get(type).build_from_hash(value)
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
