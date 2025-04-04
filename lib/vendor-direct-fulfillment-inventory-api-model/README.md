# vendor-direct-fulfillment-inventory-api-model

AmzSpApi::VendorDirectFulfillmentInventoryApiModel - the Ruby gem for the Selling Partner API for Direct Fulfillment Inventory Updates

The Selling Partner API for Direct Fulfillment Inventory Updates provides programmatic access to a direct fulfillment vendor's inventory updates.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build vendor-direct-fulfillment-inventory-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./vendor-direct-fulfillment-inventory-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./vendor-direct-fulfillment-inventory-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'vendor-direct-fulfillment-inventory-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'vendor-direct-fulfillment-inventory-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'vendor-direct-fulfillment-inventory-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi.new
body = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::SubmitInventoryUpdateRequest.new # SubmitInventoryUpdateRequest | The request body containing the inventory update data to submit.
warehouse_id = 'warehouse_id_example' # String | Identifier for the warehouse for which to update inventory.


begin
  result = api_instance.submit_inventory_update(body, warehouse_id)
  p result
rescue AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ApiError => e
  puts "Exception when calling UpdateInventoryApi->submit_inventory_update: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi* | [**submit_inventory_update**](docs/UpdateInventoryApi.md#submit_inventory_update) | **POST** /vendor/directFulfillment/inventory/v1/warehouses/{warehouseId}/items | 

## Documentation for Models

 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::Error](docs/Error.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::InventoryUpdate](docs/InventoryUpdate.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ItemDetails](docs/ItemDetails.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ItemQuantity](docs/ItemQuantity.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::PartyIdentification](docs/PartyIdentification.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::SubmitInventoryUpdateRequest](docs/SubmitInventoryUpdateRequest.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::SubmitInventoryUpdateResponse](docs/SubmitInventoryUpdateResponse.md)
 - [AmzSpApi::VendorDirectFulfillmentInventoryApiModel::TransactionReference](docs/TransactionReference.md)

## Documentation for Authorization

 All endpoints do not require authorization.

