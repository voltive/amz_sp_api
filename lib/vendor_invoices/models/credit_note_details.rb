=begin
#Selling Partner API for Retail Procurement Payments

#The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module AmzSpApi::VendorInvoices
  # References required in order to process a credit note. This information is required only if InvoiceType is CreditNote.
  class CreditNoteDetails
    # Original Invoice Number when sending a credit note relating to an existing invoice. One Invoice only to be processed per Credit Note. This is mandatory for AP Credit Notes.
    attr_accessor :reference_invoice_number

    # Debit Note Number as generated by Amazon. Recommended for Returns and COOP Credit Notes.
    attr_accessor :debit_note_number

    # Identifies the Returns Notice Number. Mandatory for all Returns Credit Notes.
    attr_accessor :returns_reference_number

    attr_accessor :goods_return_date

    # Identifies the Returned Merchandise Authorization ID, if generated.
    attr_accessor :rma_id

    # Identifies the COOP reference used for COOP agreement. Failure to provide the COOP reference number or the Debit Note number may lead to a rejection of the Credit Note.
    attr_accessor :coop_reference_number

    # Identifies the consignor reference number (VRET number), if generated by Amazon.
    attr_accessor :consignors_reference_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference_invoice_number' => :'referenceInvoiceNumber',
        :'debit_note_number' => :'debitNoteNumber',
        :'returns_reference_number' => :'returnsReferenceNumber',
        :'goods_return_date' => :'goodsReturnDate',
        :'rma_id' => :'rmaId',
        :'coop_reference_number' => :'coopReferenceNumber',
        :'consignors_reference_number' => :'consignorsReferenceNumber'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'reference_invoice_number' => :'Object',
        :'debit_note_number' => :'Object',
        :'returns_reference_number' => :'Object',
        :'goods_return_date' => :'Object',
        :'rma_id' => :'Object',
        :'coop_reference_number' => :'Object',
        :'consignors_reference_number' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorInvoices::CreditNoteDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorInvoices::CreditNoteDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference_invoice_number')
        self.reference_invoice_number = attributes[:'reference_invoice_number']
      end

      if attributes.key?(:'debit_note_number')
        self.debit_note_number = attributes[:'debit_note_number']
      end

      if attributes.key?(:'returns_reference_number')
        self.returns_reference_number = attributes[:'returns_reference_number']
      end

      if attributes.key?(:'goods_return_date')
        self.goods_return_date = attributes[:'goods_return_date']
      end

      if attributes.key?(:'rma_id')
        self.rma_id = attributes[:'rma_id']
      end

      if attributes.key?(:'coop_reference_number')
        self.coop_reference_number = attributes[:'coop_reference_number']
      end

      if attributes.key?(:'consignors_reference_number')
        self.consignors_reference_number = attributes[:'consignors_reference_number']
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
          reference_invoice_number == o.reference_invoice_number &&
          debit_note_number == o.debit_note_number &&
          returns_reference_number == o.returns_reference_number &&
          goods_return_date == o.goods_return_date &&
          rma_id == o.rma_id &&
          coop_reference_number == o.coop_reference_number &&
          consignors_reference_number == o.consignors_reference_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference_invoice_number, debit_note_number, returns_reference_number, goods_return_date, rma_id, coop_reference_number, consignors_reference_number].hash
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
        AmzSpApi::VendorInvoices.const_get(type).build_from_hash(value)
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
