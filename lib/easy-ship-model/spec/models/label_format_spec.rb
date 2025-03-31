=begin
#Selling Partner API for Easy Ship

#Use the Selling Partner API for Easy Ship to build applications for sellers to manage and ship Amazon Easy Ship orders. With this API, you can get available time slots, schedule and reschedule Easy Ship orders, and print shipping labels, invoices, and warranties. To review the differences in Easy Ship operations by marketplace, refer to [Marketplace support](https://developer-docs.amazon.com/sp-api/docs/easyship-api-v2022-03-23-use-case-guide#marketplace-support).

OpenAPI spec version: 2022-03-23

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::EasyShipModel::LabelFormat
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LabelFormat' do
  before do
    # run before each test
    @instance = AmzSpApi::EasyShipModel::LabelFormat.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LabelFormat' do
    it 'should create an instance of LabelFormat' do
      expect(@instance).to be_instance_of(AmzSpApi::EasyShipModel::LabelFormat)
    end
  end
end
