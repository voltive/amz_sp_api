=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'reports_2021_06_30/api_client'
require 'reports_2021_06_30/api_error'
require 'reports_2021_06_30/version'
require 'reports_2021_06_30/configuration'

# Models
require 'reports_2021_06_30/models/create_report_response'
require 'reports_2021_06_30/models/create_report_schedule_response'
require 'reports_2021_06_30/models/create_report_schedule_specification'
require 'reports_2021_06_30/models/create_report_specification'
require 'reports_2021_06_30/models/error'
require 'reports_2021_06_30/models/error_list'
require 'reports_2021_06_30/models/get_reports_response'
require 'reports_2021_06_30/models/report'
require 'reports_2021_06_30/models/report_document'
require 'reports_2021_06_30/models/report_list'
require 'reports_2021_06_30/models/report_options'
require 'reports_2021_06_30/models/report_schedule'
require 'reports_2021_06_30/models/report_schedule_list'

# APIs
require 'reports_2021_06_30/api/reports_api'

module AmzSpApi::Reports20210630
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::Reports20210630.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
