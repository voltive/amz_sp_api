=begin
#Selling Partner API for Replenishment

#The Selling Partner API for Replenishment (Replenishment API) provides programmatic access to replenishment program metrics and offers. These programs provide recurring delivery of any replenishable item at a frequency chosen by the customer.  The Replenishment API is available worldwide wherever Amazon Subscribe & Save is available or is supported. The API is available to vendors and FBA selling partners.

OpenAPI spec version: 2022-11-07

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module AmzSpApi::ReplenishmentApiModel
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      if @message.nil?
        msg = "Error message: the server returns an error"
      else
        msg = @message
      end

      msg += "\nHTTP status code: #{code}" if code
      msg += "\nResponse headers: #{response_headers}" if response_headers
      msg += "\nResponse body: #{response_body}" if response_body

      msg
    end

  end
end
