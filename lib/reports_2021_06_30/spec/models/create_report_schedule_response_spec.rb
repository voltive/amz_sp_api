=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::Reports20210630::CreateReportScheduleResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateReportScheduleResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::Reports20210630::CreateReportScheduleResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateReportScheduleResponse' do
    it 'should create an instance of CreateReportScheduleResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::Reports20210630::CreateReportScheduleResponse)
    end
  end
  describe 'test attribute "report_schedule_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
