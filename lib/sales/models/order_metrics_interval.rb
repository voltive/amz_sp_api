=begin
#Selling Partner API for Sales

#The Selling Partner API for Sales provides APIs related to sales performance.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::Sales
  # Contains order metrics.
  class OrderMetricsInterval
    # The interval of time based on requested granularity (ex. Hour, Day, etc.) If this is the first or the last interval from the list, it might contain incomplete data if the requested interval doesn't align with the requested granularity (ex. request interval 2018-09-01T02:00:00Z--2018-09-04T19:00:00Z and granularity day will result in Sept 1st UTC day and Sept 4th UTC days having partial data).
    attr_accessor :interval

    # The number of units in orders based on the specified filters.
    attr_accessor :unit_count

    # The number of order items based on the specified filters.
    attr_accessor :order_item_count

    # The number of orders based on the specified filters.
    attr_accessor :order_count

    attr_accessor :average_unit_price

    attr_accessor :total_sales

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'interval' => :'interval',
        :'unit_count' => :'unitCount',
        :'order_item_count' => :'orderItemCount',
        :'order_count' => :'orderCount',
        :'average_unit_price' => :'averageUnitPrice',
        :'total_sales' => :'totalSales'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'interval' => :'Object',
        :'unit_count' => :'Object',
        :'order_item_count' => :'Object',
        :'order_count' => :'Object',
        :'average_unit_price' => :'Object',
        :'total_sales' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::Sales::OrderMetricsInterval` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::Sales::OrderMetricsInterval`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'unit_count')
        self.unit_count = attributes[:'unit_count']
      end

      if attributes.key?(:'order_item_count')
        self.order_item_count = attributes[:'order_item_count']
      end

      if attributes.key?(:'order_count')
        self.order_count = attributes[:'order_count']
      end

      if attributes.key?(:'average_unit_price')
        self.average_unit_price = attributes[:'average_unit_price']
      end

      if attributes.key?(:'total_sales')
        self.total_sales = attributes[:'total_sales']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @interval.nil?
        invalid_properties.push('invalid value for "interval", interval cannot be nil.')
      end

      if @unit_count.nil?
        invalid_properties.push('invalid value for "unit_count", unit_count cannot be nil.')
      end

      if @order_item_count.nil?
        invalid_properties.push('invalid value for "order_item_count", order_item_count cannot be nil.')
      end

      if @order_count.nil?
        invalid_properties.push('invalid value for "order_count", order_count cannot be nil.')
      end

      if @average_unit_price.nil?
        invalid_properties.push('invalid value for "average_unit_price", average_unit_price cannot be nil.')
      end

      if @total_sales.nil?
        invalid_properties.push('invalid value for "total_sales", total_sales cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @interval.nil?
      return false if @unit_count.nil?
      return false if @order_item_count.nil?
      return false if @order_count.nil?
      return false if @average_unit_price.nil?
      return false if @total_sales.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          interval == o.interval &&
          unit_count == o.unit_count &&
          order_item_count == o.order_item_count &&
          order_count == o.order_count &&
          average_unit_price == o.average_unit_price &&
          total_sales == o.total_sales
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [interval, unit_count, order_item_count, order_count, average_unit_price, total_sales].hash
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
        AmzSpApi::Sales.const_get(type).build_from_hash(value)
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
