=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module AmzSpApi::VendorOrdersApiModel
  # Details of an order.
  class OrderDetails
    # The date the purchase order was placed. Must be in ISO-8601 date/time format.
    attr_accessor :purchase_order_date

    # The date when purchase order was last changed by Amazon after the order was placed. This date will be greater than 'purchaseOrderDate'. This means the PO data was changed on that date and vendors are required to fulfill the  updated PO. The PO changes can be related to Item Quantity, Ship to Location, Ship Window etc. This field will not be present in orders that have not changed after creation. Must be in ISO-8601 date/time format.
    attr_accessor :purchase_order_changed_date

    # The date when current purchase order state was changed. Current purchase order state is available in the field 'purchaseOrderState'. Must be in ISO-8601 date/time format.
    attr_accessor :purchase_order_state_changed_date

    # Type of purchase order.
    attr_accessor :purchase_order_type

    attr_accessor :import_details

    # If requested by the recipient, this field will contain a promotional/deal number. The discount code line is optional. It is used to obtain a price discount on items on the order.
    attr_accessor :deal_code

    # Payment method used.
    attr_accessor :payment_method

    attr_accessor :buying_party

    attr_accessor :selling_party

    attr_accessor :ship_to_party

    attr_accessor :bill_to_party

    attr_accessor :ship_window

    attr_accessor :delivery_window

    # A list of items in this purchase order.
    attr_accessor :items

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
        :'purchase_order_date' => :'purchaseOrderDate',
        :'purchase_order_changed_date' => :'purchaseOrderChangedDate',
        :'purchase_order_state_changed_date' => :'purchaseOrderStateChangedDate',
        :'purchase_order_type' => :'purchaseOrderType',
        :'import_details' => :'importDetails',
        :'deal_code' => :'dealCode',
        :'payment_method' => :'paymentMethod',
        :'buying_party' => :'buyingParty',
        :'selling_party' => :'sellingParty',
        :'ship_to_party' => :'shipToParty',
        :'bill_to_party' => :'billToParty',
        :'ship_window' => :'shipWindow',
        :'delivery_window' => :'deliveryWindow',
        :'items' => :'items'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'purchase_order_date' => :'Object',
        :'purchase_order_changed_date' => :'Object',
        :'purchase_order_state_changed_date' => :'Object',
        :'purchase_order_type' => :'Object',
        :'import_details' => :'Object',
        :'deal_code' => :'Object',
        :'payment_method' => :'Object',
        :'buying_party' => :'Object',
        :'selling_party' => :'Object',
        :'ship_to_party' => :'Object',
        :'bill_to_party' => :'Object',
        :'ship_window' => :'Object',
        :'delivery_window' => :'Object',
        :'items' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorOrdersApiModel::OrderDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorOrdersApiModel::OrderDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'purchase_order_date')
        self.purchase_order_date = attributes[:'purchase_order_date']
      end

      if attributes.key?(:'purchase_order_changed_date')
        self.purchase_order_changed_date = attributes[:'purchase_order_changed_date']
      end

      if attributes.key?(:'purchase_order_state_changed_date')
        self.purchase_order_state_changed_date = attributes[:'purchase_order_state_changed_date']
      end

      if attributes.key?(:'purchase_order_type')
        self.purchase_order_type = attributes[:'purchase_order_type']
      end

      if attributes.key?(:'import_details')
        self.import_details = attributes[:'import_details']
      end

      if attributes.key?(:'deal_code')
        self.deal_code = attributes[:'deal_code']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'buying_party')
        self.buying_party = attributes[:'buying_party']
      end

      if attributes.key?(:'selling_party')
        self.selling_party = attributes[:'selling_party']
      end

      if attributes.key?(:'ship_to_party')
        self.ship_to_party = attributes[:'ship_to_party']
      end

      if attributes.key?(:'bill_to_party')
        self.bill_to_party = attributes[:'bill_to_party']
      end

      if attributes.key?(:'ship_window')
        self.ship_window = attributes[:'ship_window']
      end

      if attributes.key?(:'delivery_window')
        self.delivery_window = attributes[:'delivery_window']
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @purchase_order_date.nil?
        invalid_properties.push('invalid value for "purchase_order_date", purchase_order_date cannot be nil.')
      end

      if @purchase_order_state_changed_date.nil?
        invalid_properties.push('invalid value for "purchase_order_state_changed_date", purchase_order_state_changed_date cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @purchase_order_date.nil?
      return false if @purchase_order_state_changed_date.nil?
      purchase_order_type_validator = EnumAttributeValidator.new('Object', ['RegularOrder', 'ConsignedOrder', 'NewProductIntroduction', 'RushOrder'])
      return false unless purchase_order_type_validator.valid?(@purchase_order_type)
      payment_method_validator = EnumAttributeValidator.new('Object', ['Invoice', 'Consignment', 'CreditCard', 'Prepaid'])
      return false unless payment_method_validator.valid?(@payment_method)
      return false if @items.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purchase_order_type Object to be assigned
    def purchase_order_type=(purchase_order_type)
      validator = EnumAttributeValidator.new('Object', ['RegularOrder', 'ConsignedOrder', 'NewProductIntroduction', 'RushOrder'])
      unless validator.valid?(purchase_order_type)
        fail ArgumentError, "invalid value for \"purchase_order_type\", must be one of #{validator.allowable_values}."
      end
      @purchase_order_type = purchase_order_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('Object', ['Invoice', 'Consignment', 'CreditCard', 'Prepaid'])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for \"payment_method\", must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          purchase_order_date == o.purchase_order_date &&
          purchase_order_changed_date == o.purchase_order_changed_date &&
          purchase_order_state_changed_date == o.purchase_order_state_changed_date &&
          purchase_order_type == o.purchase_order_type &&
          import_details == o.import_details &&
          deal_code == o.deal_code &&
          payment_method == o.payment_method &&
          buying_party == o.buying_party &&
          selling_party == o.selling_party &&
          ship_to_party == o.ship_to_party &&
          bill_to_party == o.bill_to_party &&
          ship_window == o.ship_window &&
          delivery_window == o.delivery_window &&
          items == o.items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [purchase_order_date, purchase_order_changed_date, purchase_order_state_changed_date, purchase_order_type, import_details, deal_code, payment_method, buying_party, selling_party, ship_to_party, bill_to_party, ship_window, delivery_window, items].hash
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
        AmzSpApi::VendorOrdersApiModel.const_get(type).build_from_hash(value)
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
