=begin
#Selling Partner API for A+ Content Management

#Use the A+ Content API to build applications that help selling partners add rich marketing content to their Amazon product detail pages. Selling partners can use A+ content to share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners use content modules to add images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

# Common files
require 'aplus_content_2020_11_01/api_client'
require 'aplus_content_2020_11_01/api_error'
require 'aplus_content_2020_11_01/version'
require 'aplus_content_2020_11_01/configuration'

# Models
require 'aplus_content_2020_11_01/models/aplus_paginated_response'
require 'aplus_content_2020_11_01/models/aplus_response'
require 'aplus_content_2020_11_01/models/asin'
require 'aplus_content_2020_11_01/models/asin_badge'
require 'aplus_content_2020_11_01/models/asin_badge_set'
require 'aplus_content_2020_11_01/models/asin_metadata'
require 'aplus_content_2020_11_01/models/asin_metadata_set'
require 'aplus_content_2020_11_01/models/asin_set'
require 'aplus_content_2020_11_01/models/color_type'
require 'aplus_content_2020_11_01/models/content_badge'
require 'aplus_content_2020_11_01/models/content_badge_set'
require 'aplus_content_2020_11_01/models/content_document'
require 'aplus_content_2020_11_01/models/content_metadata'
require 'aplus_content_2020_11_01/models/content_metadata_record'
require 'aplus_content_2020_11_01/models/content_metadata_record_list'
require 'aplus_content_2020_11_01/models/content_module'
require 'aplus_content_2020_11_01/models/content_module_list'
require 'aplus_content_2020_11_01/models/content_module_type'
require 'aplus_content_2020_11_01/models/content_record'
require 'aplus_content_2020_11_01/models/content_reference_key'
require 'aplus_content_2020_11_01/models/content_reference_key_set'
require 'aplus_content_2020_11_01/models/content_status'
require 'aplus_content_2020_11_01/models/content_sub_type'
require 'aplus_content_2020_11_01/models/content_type'
require 'aplus_content_2020_11_01/models/decorator'
require 'aplus_content_2020_11_01/models/decorator_set'
require 'aplus_content_2020_11_01/models/decorator_type'
require 'aplus_content_2020_11_01/models/error'
require 'aplus_content_2020_11_01/models/error_list'
require 'aplus_content_2020_11_01/models/get_content_document_response'
require 'aplus_content_2020_11_01/models/image_component'
require 'aplus_content_2020_11_01/models/image_crop_specification'
require 'aplus_content_2020_11_01/models/image_dimensions'
require 'aplus_content_2020_11_01/models/image_offsets'
require 'aplus_content_2020_11_01/models/integer_with_units'
require 'aplus_content_2020_11_01/models/language_tag'
require 'aplus_content_2020_11_01/models/list_content_document_asin_relations_response'
require 'aplus_content_2020_11_01/models/marketplace_id'
require 'aplus_content_2020_11_01/models/message_set'
require 'aplus_content_2020_11_01/models/page_token'
require 'aplus_content_2020_11_01/models/paragraph_component'
require 'aplus_content_2020_11_01/models/plain_text_item'
require 'aplus_content_2020_11_01/models/position_type'
require 'aplus_content_2020_11_01/models/post_content_document_approval_submission_response'
require 'aplus_content_2020_11_01/models/post_content_document_asin_relations_request'
require 'aplus_content_2020_11_01/models/post_content_document_asin_relations_response'
require 'aplus_content_2020_11_01/models/post_content_document_request'
require 'aplus_content_2020_11_01/models/post_content_document_response'
require 'aplus_content_2020_11_01/models/post_content_document_suspend_submission_response'
require 'aplus_content_2020_11_01/models/publish_record'
require 'aplus_content_2020_11_01/models/publish_record_list'
require 'aplus_content_2020_11_01/models/search_content_documents_response'
require 'aplus_content_2020_11_01/models/search_content_publish_records_response'
require 'aplus_content_2020_11_01/models/standard_company_logo_module'
require 'aplus_content_2020_11_01/models/standard_comparison_product_block'
require 'aplus_content_2020_11_01/models/standard_comparison_table_module'
require 'aplus_content_2020_11_01/models/standard_four_image_text_module'
require 'aplus_content_2020_11_01/models/standard_four_image_text_quadrant_module'
require 'aplus_content_2020_11_01/models/standard_header_image_text_module'
require 'aplus_content_2020_11_01/models/standard_header_text_list_block'
require 'aplus_content_2020_11_01/models/standard_image_caption_block'
require 'aplus_content_2020_11_01/models/standard_image_sidebar_module'
require 'aplus_content_2020_11_01/models/standard_image_text_block'
require 'aplus_content_2020_11_01/models/standard_image_text_caption_block'
require 'aplus_content_2020_11_01/models/standard_image_text_overlay_module'
require 'aplus_content_2020_11_01/models/standard_multiple_image_text_module'
require 'aplus_content_2020_11_01/models/standard_product_description_module'
require 'aplus_content_2020_11_01/models/standard_single_image_highlights_module'
require 'aplus_content_2020_11_01/models/standard_single_image_specs_detail_module'
require 'aplus_content_2020_11_01/models/standard_single_side_image_module'
require 'aplus_content_2020_11_01/models/standard_tech_specs_module'
require 'aplus_content_2020_11_01/models/standard_text_block'
require 'aplus_content_2020_11_01/models/standard_text_list_block'
require 'aplus_content_2020_11_01/models/standard_text_module'
require 'aplus_content_2020_11_01/models/standard_text_pair_block'
require 'aplus_content_2020_11_01/models/standard_three_image_text_module'
require 'aplus_content_2020_11_01/models/text_component'
require 'aplus_content_2020_11_01/models/text_item'
require 'aplus_content_2020_11_01/models/validate_content_document_asin_relations_response'

# APIs
require 'aplus_content_2020_11_01/api/aplus_content_api'

module AmzSpApi::AplusContent20201101
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::AplusContent20201101.configure do |config|
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
