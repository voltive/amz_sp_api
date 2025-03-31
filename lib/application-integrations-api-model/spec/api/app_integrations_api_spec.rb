=begin
#The Selling Partner API for third party application integrations.

#With the AppIntegrations API v2024-04-01, you can send notifications to Amazon Selling Partners and display the notifications in Seller Central.

OpenAPI spec version: 2024-04-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AppIntegrationsApi' do
  before do
    # run before each test
    @instance = AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppIntegrationsApi' do
    it 'should create an instance of AppIntegrationsApi' do
      expect(@instance).to be_instance_of(AmzSpApi::ApplicationIntegrationsApiModel::AppIntegrationsApi)
    end
  end

  # unit tests for create_notification
  # Create a notification for sellers in Seller Central.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body The request body for the &#x60;createNotification&#x60; operation.
  # @param [Hash] opts the optional parameters
  # @return [CreateNotificationResponse]
  describe 'create_notification test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_notifications
  # Remove your application&#x27;s notifications from the Appstore notifications dashboard.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body The request body for the &#x60;deleteNotifications&#x60; operation.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_notifications test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for record_action_feedback
  # Records the seller&#x27;s response to a notification.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The preceding table indicates the default rate and burst values for this operation. Sellers whose business demands require higher throughput may have higher rate and burst values than those shown here. For more information, refer to [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param body The request body for the &#x60;recordActionFeedback&#x60; operation.
  # @param notification_id A &#x60;notificationId&#x60; uniquely identifies a notification.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'record_action_feedback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
