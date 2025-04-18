=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module AmzSpApi::Reports20210630
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels the report that you specify. Only reports with `processingStatus=IN_QUEUE` can be cancelled. Cancelled reports are returned in subsequent calls to the `getReport` and `getReports` operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_id The identifier for the report. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_report(report_id, opts = {})
      cancel_report_with_http_info(report_id, opts)
      nil
    end

    # Cancels the report that you specify. Only reports with &#x60;processingStatus&#x3D;IN_QUEUE&#x60; can be cancelled. Cancelled reports are returned in subsequent calls to the &#x60;getReport&#x60; and &#x60;getReports&#x60; operations.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_id The identifier for the report. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_report_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.cancel_report ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ReportsApi.cancel_report"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/reports/{reportId}'.sub('{' + 'reportId' + '}', report_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#cancel_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancels the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_schedule_id The identifier for the report schedule. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_report_schedule(report_schedule_id, opts = {})
      cancel_report_schedule_with_http_info(report_schedule_id, opts)
      nil
    end

    # Cancels the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_schedule_id The identifier for the report schedule. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_report_schedule_with_http_info(report_schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.cancel_report_schedule ...'
      end
      # verify the required parameter 'report_schedule_id' is set
      if @api_client.config.client_side_validation && report_schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_schedule_id' when calling ReportsApi.cancel_report_schedule"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/schedules/{reportScheduleId}'.sub('{' + 'reportScheduleId' + '}', report_schedule_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#cancel_report_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a report.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Information required to create the report.
    # @param [Hash] opts the optional parameters
    # @return [CreateReportResponse]
    def create_report(body, opts = {})
      data, _status_code, _headers = create_report_with_http_info(body, opts)
      data
    end

    # Creates a report.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Information required to create the report.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateReportResponse, Integer, Hash)>] CreateReportResponse data, response status code and response headers
    def create_report_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.create_report ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReportsApi.create_report"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/reports'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateReportResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#create_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a report schedule. If a report schedule with the same report type and marketplace IDs already exists, it will be cancelled and replaced with this one.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Information required to create the report schedule.
    # @param [Hash] opts the optional parameters
    # @return [CreateReportScheduleResponse]
    def create_report_schedule(body, opts = {})
      data, _status_code, _headers = create_report_schedule_with_http_info(body, opts)
      data
    end

    # Creates a report schedule. If a report schedule with the same report type and marketplace IDs already exists, it will be cancelled and replaced with this one.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Information required to create the report schedule.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateReportScheduleResponse, Integer, Hash)>] CreateReportScheduleResponse data, response status code and response headers
    def create_report_schedule_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.create_report_schedule ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReportsApi.create_report_schedule"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/schedules'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateReportScheduleResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#create_report_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns report details (including the `reportDocumentId`, if available) for the report that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_id The identifier for the report. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [Report]
    def get_report(report_id, opts = {})
      data, _status_code, _headers = get_report_with_http_info(report_id, opts)
      data
    end

    # Returns report details (including the &#x60;reportDocumentId&#x60;, if available) for the report that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_id The identifier for the report. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Report, Integer, Hash)>] Report data, response status code and response headers
    def get_report_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ReportsApi.get_report"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/reports/{reportId}'.sub('{' + 'reportId' + '}', report_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Report' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the information required for retrieving a report document's contents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_document_id The identifier for the report document.
    # @param [Hash] opts the optional parameters
    # @return [ReportDocument]
    def get_report_document(report_document_id, opts = {})
      data, _status_code, _headers = get_report_document_with_http_info(report_document_id, opts)
      data
    end

    # Returns the information required for retrieving a report document&#x27;s contents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0167 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_document_id The identifier for the report document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportDocument, Integer, Hash)>] ReportDocument data, response status code and response headers
    def get_report_document_with_http_info(report_document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report_document ...'
      end
      # verify the required parameter 'report_document_id' is set
      if @api_client.config.client_side_validation && report_document_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_document_id' when calling ReportsApi.get_report_document"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/documents/{reportDocumentId}'.sub('{' + 'reportDocumentId' + '}', report_document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ReportDocument' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns report schedule details for the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_schedule_id The identifier for the report schedule. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [ReportSchedule]
    def get_report_schedule(report_schedule_id, opts = {})
      data, _status_code, _headers = get_report_schedule_with_http_info(report_schedule_id, opts)
      data
    end

    # Returns report schedule details for the report schedule that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_schedule_id The identifier for the report schedule. This identifier is unique only in combination with a seller ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportSchedule, Integer, Hash)>] ReportSchedule data, response status code and response headers
    def get_report_schedule_with_http_info(report_schedule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report_schedule ...'
      end
      # verify the required parameter 'report_schedule_id' is set
      if @api_client.config.client_side_validation && report_schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_schedule_id' when calling ReportsApi.get_report_schedule"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/schedules/{reportScheduleId}'.sub('{' + 'reportScheduleId' + '}', report_schedule_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ReportSchedule' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns report schedule details that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_types A list of report types used to filter report schedules. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information.
    # @param [Hash] opts the optional parameters
    # @return [ReportScheduleList]
    def get_report_schedules(report_types, opts = {})
      data, _status_code, _headers = get_report_schedules_with_http_info(report_types, opts)
      data
    end

    # Returns report schedule details that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param report_types A list of report types used to filter report schedules. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportScheduleList, Integer, Hash)>] ReportScheduleList data, response status code and response headers
    def get_report_schedules_with_http_info(report_types, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report_schedules ...'
      end
      # verify the required parameter 'report_types' is set
      if @api_client.config.client_side_validation && report_types.nil?
        fail ArgumentError, "Missing the required parameter 'report_types' when calling ReportsApi.get_report_schedules"
      end
      # resource path
      local_var_path = '/reports/2021-06-30/schedules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reportTypes'] = @api_client.build_collection_param(report_types, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ReportScheduleList' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns report details for the reports that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :report_types A list of report types used to filter reports. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information. When reportTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either reportTypes or nextToken is required.
    # @option opts [Array<String>] :processing_statuses A list of processing statuses used to filter reports.
    # @option opts [Array<String>] :marketplace_ids A list of marketplace identifiers used to filter reports. The reports returned will match at least one of the marketplaces that you specify.
    # @option opts [Integer] :page_size The maximum number of reports to return in a single call. (default to 10)
    # @option opts [DateTime] :created_since The earliest report creation date and time for reports to include in the response, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. The default is 90 days ago. Reports are retained for a maximum of 90 days.
    # @option opts [DateTime] :created_until The latest report creation date and time for reports to include in the response, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. The default is now.
    # @option opts [String] :next_token A string token returned in the response to your previous request. &#x60;nextToken&#x60; is returned when the number of results exceeds the specified &#x60;pageSize&#x60; value. To get the next page of results, call the &#x60;getReports&#x60; operation and include this token as the only parameter. Specifying &#x60;nextToken&#x60; with any other parameters will cause the request to fail.
    # @return [GetReportsResponse]
    def get_reports(opts = {})
      data, _status_code, _headers = get_reports_with_http_info(opts)
      data
    end

    # Returns report details for the reports that match the filters that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 0.0222 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :report_types A list of report types used to filter reports. Refer to [Report Type Values](https://developer-docs.amazon.com/sp-api/docs/report-type-values) for more information. When reportTypes is provided, the other filter parameters (processingStatuses, marketplaceIds, createdSince, createdUntil) and pageSize may also be provided. Either reportTypes or nextToken is required.
    # @option opts [Array<String>] :processing_statuses A list of processing statuses used to filter reports.
    # @option opts [Array<String>] :marketplace_ids A list of marketplace identifiers used to filter reports. The reports returned will match at least one of the marketplaces that you specify.
    # @option opts [Integer] :page_size The maximum number of reports to return in a single call.
    # @option opts [DateTime] :created_since The earliest report creation date and time for reports to include in the response, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. The default is 90 days ago. Reports are retained for a maximum of 90 days.
    # @option opts [DateTime] :created_until The latest report creation date and time for reports to include in the response, in &lt;a href&#x3D;&#x27;https://developer-docs.amazon.com/sp-api/docs/iso-8601&#x27;&gt;ISO 8601&lt;/a&gt; date time format. The default is now.
    # @option opts [String] :next_token A string token returned in the response to your previous request. &#x60;nextToken&#x60; is returned when the number of results exceeds the specified &#x60;pageSize&#x60; value. To get the next page of results, call the &#x60;getReports&#x60; operation and include this token as the only parameter. Specifying &#x60;nextToken&#x60; with any other parameters will cause the request to fail.
    # @return [Array<(GetReportsResponse, Integer, Hash)>] GetReportsResponse data, response status code and response headers
    def get_reports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_reports ...'
      end
      if @api_client.config.client_side_validation && opts[:'processing_statuses'] && !opts[:'processing_statuses'].all? { |item| ['CANCELLED', 'DONE', 'FATAL', 'IN_PROGRESS', 'IN_QUEUE'].include?(item) }
        fail ArgumentError, 'invalid value for "processing_statuses", must include one of CANCELLED, DONE, FATAL, IN_PROGRESS, IN_QUEUE'
      end
      # resource path
      local_var_path = '/reports/2021-06-30/reports'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reportTypes'] = @api_client.build_collection_param(opts[:'report_types'], :csv) if !opts[:'report_types'].nil?
      query_params[:'processingStatuses'] = @api_client.build_collection_param(opts[:'processing_statuses'], :csv) if !opts[:'processing_statuses'].nil?
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(opts[:'marketplace_ids'], :csv) if !opts[:'marketplace_ids'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'createdSince'] = opts[:'created_since'] if !opts[:'created_since'].nil?
      query_params[:'createdUntil'] = opts[:'created_until'] if !opts[:'created_until'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetReportsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
