# vendor-direct-fulfillment-payments-api-model

AmzSpApi::VendorDirectFulfillmentPaymentsApiModel - the Ruby gem for the Selling Partner API for Direct Fulfillment Payments

The Selling Partner API for Direct Fulfillment Payments provides programmatic access to a direct fulfillment vendor's invoice data.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build vendor-direct-fulfillment-payments-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./vendor-direct-fulfillment-payments-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./vendor-direct-fulfillment-payments-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'vendor-direct-fulfillment-payments-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'vendor-direct-fulfillment-payments-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'vendor-direct-fulfillment-payments-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::VendorInvoiceApi.new
body = AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::SubmitInvoiceRequest.new # SubmitInvoiceRequest | The request body containing one or more invoices for vendor orders.


begin
  result = api_instance.submit_invoice(body)
  p result
rescue AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::ApiError => e
  puts "Exception when calling VendorInvoiceApi->submit_invoice: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::VendorInvoiceApi* | [**submit_invoice**](docs/VendorInvoiceApi.md#submit_invoice) | **POST** /vendor/directFulfillment/payments/v1/invoices | 

## Documentation for Models

 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::AdditionalDetails](docs/AdditionalDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::Address](docs/Address.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::ChargeDetails](docs/ChargeDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::Decimal](docs/Decimal.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::Error](docs/Error.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::InvoiceDetail](docs/InvoiceDetail.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::InvoiceItem](docs/InvoiceItem.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::ItemQuantity](docs/ItemQuantity.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::Money](docs/Money.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::PartyIdentification](docs/PartyIdentification.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::SubmitInvoiceRequest](docs/SubmitInvoiceRequest.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::SubmitInvoiceResponse](docs/SubmitInvoiceResponse.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::TaxDetail](docs/TaxDetail.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::TaxRegistrationDetail](docs/TaxRegistrationDetail.md)
 - [AmzSpApi::VendorDirectFulfillmentPaymentsApiModel::TransactionReference](docs/TransactionReference.md)

## Documentation for Authorization

 All endpoints do not require authorization.

