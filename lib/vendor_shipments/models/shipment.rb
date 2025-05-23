=begin
#Selling Partner API for Retail Procurement Shipments

#The Selling Partner API for Retail Procurement Shipments provides programmatic access to retail shipping data for vendors.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::VendorShipments
  # A list of one or more shipments with respective details.
  class Shipment
    # Unique Transportation ID created by Vendor (Should not be used over the last 365 days).
    attr_accessor :vendor_shipment_identifier

    # Indicates the type of  transportation request such as (New,Cancel,Confirm and PackageLabelRequest). Each transactiontype has a unique set of operation and there are corresponding details to be populated for each operation.
    attr_accessor :transaction_type

    # The buyer Reference Number is a unique identifier generated by buyer for all Collect/WePay shipments when you submit a transportation request. This field is mandatory for Collect/WePay shipments.
    attr_accessor :buyer_reference_number

    # Date on which the transportation request was submitted.
    attr_accessor :transaction_date

    # Indicates the current shipment status.
    attr_accessor :current_shipment_status

    # Date and time when the last status was updated.
    attr_accessor :currentshipment_status_date

    # Indicates the list of current shipment status details and when the last update was received from carrier this is available on shipment Details response.
    attr_accessor :shipment_status_details

    # The date and time of the shipment request created by vendor.
    attr_accessor :shipment_create_date

    # The date and time of the departure of the shipment from the vendor's location. Vendors are requested to send ASNs within 30 minutes of departure from their warehouse/distribution center or at least 6 hours prior to the appointment time at the Buyer destination warehouse, whichever is sooner. Shipped date mentioned in the shipment confirmation should not be in the future.
    attr_accessor :shipment_confirm_date

    # The date and time of the package label created for the shipment by buyer.
    attr_accessor :package_label_create_date

    # Indicates if this transportation request is WePay/Collect or TheyPay/Prepaid. This is a mandatory information.
    attr_accessor :shipment_freight_term

    attr_accessor :selling_party

    attr_accessor :ship_from_party

    attr_accessor :ship_to_party

    attr_accessor :shipment_measurements

    attr_accessor :collect_freight_pickup_details

    # Indicates the purchase orders involved for the transportation request. This group is an array create 1 for each PO and list their corresponding items. This information is used for deciding the route,truck allocation and storage efficiently. This is a mandatory information for Buyer performing transportation from vendor warehouse (WePay/Collect)
    attr_accessor :purchase_orders

    attr_accessor :import_details

    # A list of the items in this transportation and their associated inner container details. If any of the item detail fields are common at a carton or a pallet level, provide them at the corresponding carton or pallet level.
    attr_accessor :containers

    attr_accessor :transportation_details

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
        :'vendor_shipment_identifier' => :'vendorShipmentIdentifier',
        :'transaction_type' => :'transactionType',
        :'buyer_reference_number' => :'buyerReferenceNumber',
        :'transaction_date' => :'transactionDate',
        :'current_shipment_status' => :'currentShipmentStatus',
        :'currentshipment_status_date' => :'currentshipmentStatusDate',
        :'shipment_status_details' => :'shipmentStatusDetails',
        :'shipment_create_date' => :'shipmentCreateDate',
        :'shipment_confirm_date' => :'shipmentConfirmDate',
        :'package_label_create_date' => :'packageLabelCreateDate',
        :'shipment_freight_term' => :'shipmentFreightTerm',
        :'selling_party' => :'sellingParty',
        :'ship_from_party' => :'shipFromParty',
        :'ship_to_party' => :'shipToParty',
        :'shipment_measurements' => :'shipmentMeasurements',
        :'collect_freight_pickup_details' => :'collectFreightPickupDetails',
        :'purchase_orders' => :'purchaseOrders',
        :'import_details' => :'importDetails',
        :'containers' => :'containers',
        :'transportation_details' => :'transportationDetails'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'vendor_shipment_identifier' => :'Object',
        :'transaction_type' => :'Object',
        :'buyer_reference_number' => :'Object',
        :'transaction_date' => :'Object',
        :'current_shipment_status' => :'Object',
        :'currentshipment_status_date' => :'Object',
        :'shipment_status_details' => :'Object',
        :'shipment_create_date' => :'Object',
        :'shipment_confirm_date' => :'Object',
        :'package_label_create_date' => :'Object',
        :'shipment_freight_term' => :'Object',
        :'selling_party' => :'Object',
        :'ship_from_party' => :'Object',
        :'ship_to_party' => :'Object',
        :'shipment_measurements' => :'Object',
        :'collect_freight_pickup_details' => :'Object',
        :'purchase_orders' => :'Object',
        :'import_details' => :'Object',
        :'containers' => :'Object',
        :'transportation_details' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorShipments::Shipment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorShipments::Shipment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'vendor_shipment_identifier')
        self.vendor_shipment_identifier = attributes[:'vendor_shipment_identifier']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
      end

      if attributes.key?(:'buyer_reference_number')
        self.buyer_reference_number = attributes[:'buyer_reference_number']
      end

      if attributes.key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
      end

      if attributes.key?(:'current_shipment_status')
        self.current_shipment_status = attributes[:'current_shipment_status']
      end

      if attributes.key?(:'currentshipment_status_date')
        self.currentshipment_status_date = attributes[:'currentshipment_status_date']
      end

      if attributes.key?(:'shipment_status_details')
        if (value = attributes[:'shipment_status_details']).is_a?(Array)
          self.shipment_status_details = value
        end
      end

      if attributes.key?(:'shipment_create_date')
        self.shipment_create_date = attributes[:'shipment_create_date']
      end

      if attributes.key?(:'shipment_confirm_date')
        self.shipment_confirm_date = attributes[:'shipment_confirm_date']
      end

      if attributes.key?(:'package_label_create_date')
        self.package_label_create_date = attributes[:'package_label_create_date']
      end

      if attributes.key?(:'shipment_freight_term')
        self.shipment_freight_term = attributes[:'shipment_freight_term']
      end

      if attributes.key?(:'selling_party')
        self.selling_party = attributes[:'selling_party']
      end

      if attributes.key?(:'ship_from_party')
        self.ship_from_party = attributes[:'ship_from_party']
      end

      if attributes.key?(:'ship_to_party')
        self.ship_to_party = attributes[:'ship_to_party']
      end

      if attributes.key?(:'shipment_measurements')
        self.shipment_measurements = attributes[:'shipment_measurements']
      end

      if attributes.key?(:'collect_freight_pickup_details')
        self.collect_freight_pickup_details = attributes[:'collect_freight_pickup_details']
      end

      if attributes.key?(:'purchase_orders')
        if (value = attributes[:'purchase_orders']).is_a?(Array)
          self.purchase_orders = value
        end
      end

      if attributes.key?(:'import_details')
        self.import_details = attributes[:'import_details']
      end

      if attributes.key?(:'containers')
        if (value = attributes[:'containers']).is_a?(Array)
          self.containers = value
        end
      end

      if attributes.key?(:'transportation_details')
        self.transportation_details = attributes[:'transportation_details']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @vendor_shipment_identifier.nil?
        invalid_properties.push('invalid value for "vendor_shipment_identifier", vendor_shipment_identifier cannot be nil.')
      end

      if @transaction_type.nil?
        invalid_properties.push('invalid value for "transaction_type", transaction_type cannot be nil.')
      end

      if @transaction_date.nil?
        invalid_properties.push('invalid value for "transaction_date", transaction_date cannot be nil.')
      end

      if @selling_party.nil?
        invalid_properties.push('invalid value for "selling_party", selling_party cannot be nil.')
      end

      if @ship_from_party.nil?
        invalid_properties.push('invalid value for "ship_from_party", ship_from_party cannot be nil.')
      end

      if @ship_to_party.nil?
        invalid_properties.push('invalid value for "ship_to_party", ship_to_party cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @vendor_shipment_identifier.nil?
      return false if @transaction_type.nil?
      transaction_type_validator = EnumAttributeValidator.new('Object', ['New', 'Cancel'])
      return false unless transaction_type_validator.valid?(@transaction_type)
      return false if @transaction_date.nil?
      current_shipment_status_validator = EnumAttributeValidator.new('Object', ['Created', 'TransportationRequested', 'CarrierAssigned', 'Shipped'])
      return false unless current_shipment_status_validator.valid?(@current_shipment_status)
      shipment_freight_term_validator = EnumAttributeValidator.new('Object', ['Collect', 'Prepaid'])
      return false unless shipment_freight_term_validator.valid?(@shipment_freight_term)
      return false if @selling_party.nil?
      return false if @ship_from_party.nil?
      return false if @ship_to_party.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type)
      validator = EnumAttributeValidator.new('Object', ['New', 'Cancel'])
      unless validator.valid?(transaction_type)
        fail ArgumentError, "invalid value for \"transaction_type\", must be one of #{validator.allowable_values}."
      end
      @transaction_type = transaction_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_shipment_status Object to be assigned
    def current_shipment_status=(current_shipment_status)
      validator = EnumAttributeValidator.new('Object', ['Created', 'TransportationRequested', 'CarrierAssigned', 'Shipped'])
      unless validator.valid?(current_shipment_status)
        fail ArgumentError, "invalid value for \"current_shipment_status\", must be one of #{validator.allowable_values}."
      end
      @current_shipment_status = current_shipment_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipment_freight_term Object to be assigned
    def shipment_freight_term=(shipment_freight_term)
      validator = EnumAttributeValidator.new('Object', ['Collect', 'Prepaid'])
      unless validator.valid?(shipment_freight_term)
        fail ArgumentError, "invalid value for \"shipment_freight_term\", must be one of #{validator.allowable_values}."
      end
      @shipment_freight_term = shipment_freight_term
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          vendor_shipment_identifier == o.vendor_shipment_identifier &&
          transaction_type == o.transaction_type &&
          buyer_reference_number == o.buyer_reference_number &&
          transaction_date == o.transaction_date &&
          current_shipment_status == o.current_shipment_status &&
          currentshipment_status_date == o.currentshipment_status_date &&
          shipment_status_details == o.shipment_status_details &&
          shipment_create_date == o.shipment_create_date &&
          shipment_confirm_date == o.shipment_confirm_date &&
          package_label_create_date == o.package_label_create_date &&
          shipment_freight_term == o.shipment_freight_term &&
          selling_party == o.selling_party &&
          ship_from_party == o.ship_from_party &&
          ship_to_party == o.ship_to_party &&
          shipment_measurements == o.shipment_measurements &&
          collect_freight_pickup_details == o.collect_freight_pickup_details &&
          purchase_orders == o.purchase_orders &&
          import_details == o.import_details &&
          containers == o.containers &&
          transportation_details == o.transportation_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [vendor_shipment_identifier, transaction_type, buyer_reference_number, transaction_date, current_shipment_status, currentshipment_status_date, shipment_status_details, shipment_create_date, shipment_confirm_date, package_label_create_date, shipment_freight_term, selling_party, ship_from_party, ship_to_party, shipment_measurements, collect_freight_pickup_details, purchase_orders, import_details, containers, transportation_details].hash
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
        AmzSpApi::VendorShipments.const_get(type).build_from_hash(value)
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
