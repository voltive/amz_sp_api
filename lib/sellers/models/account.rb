=begin
#The Selling Partner API for Sellers

#The [Selling Partner API for Sellers](https://developer-docs.amazon.com/sp-api/docs/sellers-api-v1-reference) (Sellers API) provides essential information about seller accounts, such as:  - The marketplaces a seller can list in - The default language and currency of a marketplace - Whether the seller has suspended listings  Refer to the [Sellers API reference](https://developer-docs.amazon.com/sp-api/docs/sellers-api-v1-reference) for details about this API's operations, data types, and schemas.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::Sellers
  # The response schema for the `getAccount` operation.
  class Account
    attr_accessor :marketplace_participation_list

    # The type of business registered for the seller account.
    attr_accessor :business_type

    # The selling plan details.
    attr_accessor :selling_plan

    attr_accessor :business

    attr_accessor :primary_contact

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
        :'marketplace_participation_list' => :'marketplaceParticipationList',
        :'business_type' => :'businessType',
        :'selling_plan' => :'sellingPlan',
        :'business' => :'business',
        :'primary_contact' => :'primaryContact'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'marketplace_participation_list' => :'Object',
        :'business_type' => :'Object',
        :'selling_plan' => :'Object',
        :'business' => :'Object',
        :'primary_contact' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::Sellers::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::Sellers::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'marketplace_participation_list')
        self.marketplace_participation_list = attributes[:'marketplace_participation_list']
      end

      if attributes.key?(:'business_type')
        self.business_type = attributes[:'business_type']
      end

      if attributes.key?(:'selling_plan')
        self.selling_plan = attributes[:'selling_plan']
      end

      if attributes.key?(:'business')
        self.business = attributes[:'business']
      end

      if attributes.key?(:'primary_contact')
        self.primary_contact = attributes[:'primary_contact']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @marketplace_participation_list.nil?
        invalid_properties.push('invalid value for "marketplace_participation_list", marketplace_participation_list cannot be nil.')
      end

      if @business_type.nil?
        invalid_properties.push('invalid value for "business_type", business_type cannot be nil.')
      end

      if @selling_plan.nil?
        invalid_properties.push('invalid value for "selling_plan", selling_plan cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @marketplace_participation_list.nil?
      return false if @business_type.nil?
      business_type_validator = EnumAttributeValidator.new('Object', ['CHARITY', 'CRAFTSMAN', 'NATURAL_PERSON_COMPANY', 'PUBLIC_LISTED', 'PRIVATE_LIMITED', 'SOLE_PROPRIETORSHIP', 'STATE_OWNED', 'INDIVIDUAL'])
      return false unless business_type_validator.valid?(@business_type)
      return false if @selling_plan.nil?
      selling_plan_validator = EnumAttributeValidator.new('Object', ['PROFESSIONAL', 'INDIVIDUAL'])
      return false unless selling_plan_validator.valid?(@selling_plan)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(business_type)
      validator = EnumAttributeValidator.new('Object', ['CHARITY', 'CRAFTSMAN', 'NATURAL_PERSON_COMPANY', 'PUBLIC_LISTED', 'PRIVATE_LIMITED', 'SOLE_PROPRIETORSHIP', 'STATE_OWNED', 'INDIVIDUAL'])
      unless validator.valid?(business_type)
        fail ArgumentError, "invalid value for \"business_type\", must be one of #{validator.allowable_values}."
      end
      @business_type = business_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] selling_plan Object to be assigned
    def selling_plan=(selling_plan)
      validator = EnumAttributeValidator.new('Object', ['PROFESSIONAL', 'INDIVIDUAL'])
      unless validator.valid?(selling_plan)
        fail ArgumentError, "invalid value for \"selling_plan\", must be one of #{validator.allowable_values}."
      end
      @selling_plan = selling_plan
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          marketplace_participation_list == o.marketplace_participation_list &&
          business_type == o.business_type &&
          selling_plan == o.selling_plan &&
          business == o.business &&
          primary_contact == o.primary_contact
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [marketplace_participation_list, business_type, selling_plan, business, primary_contact].hash
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
        AmzSpApi::Sellers.const_get(type).build_from_hash(value)
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
