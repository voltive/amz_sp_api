=begin
#Selling Partner API for Merchant Fulfillment

#With the Selling Partner API for Merchant Fulfillment, you can build applications that sellers can use to purchase shipping for non-Prime and Prime orders using Amazon's Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::MerchantFulfillmentApiModel
  # Details related to any dangerous goods or items that are shipped.
  class DangerousGoodsDetails
    # The specific UNID of the item being shipped.
    attr_accessor :united_nations_regulatory_id

    # The specific regulatory class of the shipped item.
    attr_accessor :transportation_regulatory_class

    # The specific packaging group of the item being shipped.
    attr_accessor :packing_group

    # The specific packing instruction of the item being shipped.
    attr_accessor :packing_instruction

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
        :'united_nations_regulatory_id' => :'UnitedNationsRegulatoryId',
        :'transportation_regulatory_class' => :'TransportationRegulatoryClass',
        :'packing_group' => :'PackingGroup',
        :'packing_instruction' => :'PackingInstruction'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'united_nations_regulatory_id' => :'Object',
        :'transportation_regulatory_class' => :'Object',
        :'packing_group' => :'Object',
        :'packing_instruction' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::MerchantFulfillmentApiModel::DangerousGoodsDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::MerchantFulfillmentApiModel::DangerousGoodsDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'united_nations_regulatory_id')
        self.united_nations_regulatory_id = attributes[:'united_nations_regulatory_id']
      end

      if attributes.key?(:'transportation_regulatory_class')
        self.transportation_regulatory_class = attributes[:'transportation_regulatory_class']
      end

      if attributes.key?(:'packing_group')
        self.packing_group = attributes[:'packing_group']
      end

      if attributes.key?(:'packing_instruction')
        self.packing_instruction = attributes[:'packing_instruction']
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
      packing_group_validator = EnumAttributeValidator.new('Object', ['I', 'II', 'III'])
      return false unless packing_group_validator.valid?(@packing_group)
      packing_instruction_validator = EnumAttributeValidator.new('Object', ['PI965_SECTION_IA', 'PI965_SECTION_IB', 'PI965_SECTION_II', 'PI966_SECTION_I', 'PI966_SECTION_II', 'PI967_SECTION_I', 'PI967_SECTION_II', 'PI968_SECTION_IA', 'PI968_SECTION_IB', 'PI969_SECTION_I', 'PI969_SECTION_II', 'PI970_SECTION_I', 'PI970_SECTION_II'])
      return false unless packing_instruction_validator.valid?(@packing_instruction)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] packing_group Object to be assigned
    def packing_group=(packing_group)
      validator = EnumAttributeValidator.new('Object', ['I', 'II', 'III'])
      unless validator.valid?(packing_group)
        fail ArgumentError, "invalid value for \"packing_group\", must be one of #{validator.allowable_values}."
      end
      @packing_group = packing_group
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] packing_instruction Object to be assigned
    def packing_instruction=(packing_instruction)
      validator = EnumAttributeValidator.new('Object', ['PI965_SECTION_IA', 'PI965_SECTION_IB', 'PI965_SECTION_II', 'PI966_SECTION_I', 'PI966_SECTION_II', 'PI967_SECTION_I', 'PI967_SECTION_II', 'PI968_SECTION_IA', 'PI968_SECTION_IB', 'PI969_SECTION_I', 'PI969_SECTION_II', 'PI970_SECTION_I', 'PI970_SECTION_II'])
      unless validator.valid?(packing_instruction)
        fail ArgumentError, "invalid value for \"packing_instruction\", must be one of #{validator.allowable_values}."
      end
      @packing_instruction = packing_instruction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          united_nations_regulatory_id == o.united_nations_regulatory_id &&
          transportation_regulatory_class == o.transportation_regulatory_class &&
          packing_group == o.packing_group &&
          packing_instruction == o.packing_instruction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [united_nations_regulatory_id, transportation_regulatory_class, packing_group, packing_instruction].hash
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
        AmzSpApi::MerchantFulfillmentApiModel.const_get(type).build_from_hash(value)
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
