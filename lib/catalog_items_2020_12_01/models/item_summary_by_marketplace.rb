=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, see the [Catalog Items API Use Case Guide](doc:catalog-items-api-v2020-12-01-use-case-guide).

OpenAPI spec version: 2020-12-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::CatalogItems20201201
  # Summary details of an Amazon catalog item for the indicated Amazon marketplace.
  class ItemSummaryByMarketplace
    # Amazon marketplace identifier.
    attr_accessor :marketplace_id

    # Name of the brand associated with an Amazon catalog item.
    attr_accessor :brand_name

    # Identifier of the browse node associated with an Amazon catalog item.
    attr_accessor :browse_node

    # Name of the color associated with an Amazon catalog item.
    attr_accessor :color_name

    # Name, or title, associated with an Amazon catalog item.
    attr_accessor :item_name

    # Name of the manufacturer associated with an Amazon catalog item.
    attr_accessor :manufacturer

    # Model number associated with an Amazon catalog item.
    attr_accessor :model_number

    # Name of the size associated with an Amazon catalog item.
    attr_accessor :size_name

    # Name of the style associated with an Amazon catalog item.
    attr_accessor :style_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'marketplace_id' => :'marketplaceId',
        :'brand_name' => :'brandName',
        :'browse_node' => :'browseNode',
        :'color_name' => :'colorName',
        :'item_name' => :'itemName',
        :'manufacturer' => :'manufacturer',
        :'model_number' => :'modelNumber',
        :'size_name' => :'sizeName',
        :'style_name' => :'styleName'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'marketplace_id' => :'Object',
        :'brand_name' => :'Object',
        :'browse_node' => :'Object',
        :'color_name' => :'Object',
        :'item_name' => :'Object',
        :'manufacturer' => :'Object',
        :'model_number' => :'Object',
        :'size_name' => :'Object',
        :'style_name' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::CatalogItems20201201::ItemSummaryByMarketplace` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::CatalogItems20201201::ItemSummaryByMarketplace`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'brand_name')
        self.brand_name = attributes[:'brand_name']
      end

      if attributes.key?(:'browse_node')
        self.browse_node = attributes[:'browse_node']
      end

      if attributes.key?(:'color_name')
        self.color_name = attributes[:'color_name']
      end

      if attributes.key?(:'item_name')
        self.item_name = attributes[:'item_name']
      end

      if attributes.key?(:'manufacturer')
        self.manufacturer = attributes[:'manufacturer']
      end

      if attributes.key?(:'model_number')
        self.model_number = attributes[:'model_number']
      end

      if attributes.key?(:'size_name')
        self.size_name = attributes[:'size_name']
      end

      if attributes.key?(:'style_name')
        self.style_name = attributes[:'style_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @marketplace_id.nil?
        invalid_properties.push('invalid value for "marketplace_id", marketplace_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @marketplace_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          marketplace_id == o.marketplace_id &&
          brand_name == o.brand_name &&
          browse_node == o.browse_node &&
          color_name == o.color_name &&
          item_name == o.item_name &&
          manufacturer == o.manufacturer &&
          model_number == o.model_number &&
          size_name == o.size_name &&
          style_name == o.style_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [marketplace_id, brand_name, browse_node, color_name, item_name, manufacturer, model_number, size_name, style_name].hash
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
        AmzSpApi::CatalogItems20201201.const_get(type).build_from_hash(value)
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
