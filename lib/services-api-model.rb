=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders and manage their resources.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'services-api-model/api_client'
require 'services-api-model/api_error'
require 'services-api-model/version'
require 'services-api-model/configuration'

# Models
require 'services-api-model/models/add_appointment_request'
require 'services-api-model/models/address'
require 'services-api-model/models/appointment'
require 'services-api-model/models/appointment_id'
require 'services-api-model/models/appointment_resource'
require 'services-api-model/models/appointment_resources'
require 'services-api-model/models/appointment_slot'
require 'services-api-model/models/appointment_slot_report'
require 'services-api-model/models/appointment_time'
require 'services-api-model/models/appointment_time_input'
require 'services-api-model/models/assign_appointment_resources_request'
require 'services-api-model/models/assign_appointment_resources_response'
require 'services-api-model/models/assign_appointment_resources_response_payload'
require 'services-api-model/models/associated_item'
require 'services-api-model/models/availability_record'
require 'services-api-model/models/availability_records'
require 'services-api-model/models/buyer'
require 'services-api-model/models/cancel_reservation_response'
require 'services-api-model/models/cancel_service_job_by_service_job_id_response'
require 'services-api-model/models/capacity_type'
require 'services-api-model/models/complete_service_job_by_service_job_id_response'
require 'services-api-model/models/create_reservation_record'
require 'services-api-model/models/create_reservation_request'
require 'services-api-model/models/create_reservation_response'
require 'services-api-model/models/create_service_document_upload_destination'
require 'services-api-model/models/day_of_week'
require 'services-api-model/models/encryption_details'
require 'services-api-model/models/error'
require 'services-api-model/models/error_list'
require 'services-api-model/models/fixed_slot'
require 'services-api-model/models/fixed_slot_capacity'
require 'services-api-model/models/fixed_slot_capacity_errors'
require 'services-api-model/models/fixed_slot_capacity_query'
require 'services-api-model/models/fulfillment_document'
require 'services-api-model/models/fulfillment_documents'
require 'services-api-model/models/fulfillment_time'
require 'services-api-model/models/get_appointment_slots_response'
require 'services-api-model/models/get_service_job_by_service_job_id_response'
require 'services-api-model/models/get_service_jobs_response'
require 'services-api-model/models/item_delivery'
require 'services-api-model/models/item_delivery_promise'
require 'services-api-model/models/job_listing'
require 'services-api-model/models/order_id'
require 'services-api-model/models/poa'
require 'services-api-model/models/range_capacity'
require 'services-api-model/models/range_slot'
require 'services-api-model/models/range_slot_capacity'
require 'services-api-model/models/range_slot_capacity_errors'
require 'services-api-model/models/range_slot_capacity_query'
require 'services-api-model/models/recurrence'
require 'services-api-model/models/reschedule_appointment_request'
require 'services-api-model/models/reschedule_reason_code'
require 'services-api-model/models/reservation'
require 'services-api-model/models/scope_of_work'
require 'services-api-model/models/seller'
require 'services-api-model/models/service_document_upload_destination'
require 'services-api-model/models/service_job'
require 'services-api-model/models/service_job_id'
require 'services-api-model/models/service_job_provider'
require 'services-api-model/models/service_location'
require 'services-api-model/models/service_upload_document'
require 'services-api-model/models/set_appointment_fulfillment_data_request'
require 'services-api-model/models/set_appointment_response'
require 'services-api-model/models/technician'
require 'services-api-model/models/update_reservation_record'
require 'services-api-model/models/update_reservation_request'
require 'services-api-model/models/update_reservation_response'
require 'services-api-model/models/update_schedule_record'
require 'services-api-model/models/update_schedule_request'
require 'services-api-model/models/update_schedule_response'
require 'services-api-model/models/warning'
require 'services-api-model/models/warning_list'

# APIs
require 'services-api-model/api/service_api'

module AmzSpApi::ServicesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ServicesApiModel.configure do |config|
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
