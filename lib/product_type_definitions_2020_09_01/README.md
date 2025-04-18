# product_type_definitions_2020_09_01

AmzSpApi::ProductTypeDefinitions20200901 - the Ruby gem for the Selling Partner API for Product Type Definitions

The Selling Partner API for Product Type Definitions provides programmatic access to attribute and data requirements for product types in the Amazon catalog. Use this API to return the JSON Schema for a product type that you can then use with other Selling Partner APIs, such as the Selling Partner API for Listings Items, the Selling Partner API for Catalog Items, and the Selling Partner API for Feeds (for JSON-based listing feeds).  For more information, see the [Product Type Definitions API Use Case Guide](doc:product-type-api-use-case-guide).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2020-09-01
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build product_type_definitions_2020_09_01.gemspec
```

Then either install the gem locally:

```shell
gem install ./product_type_definitions_2020_09_01-0.1.0.gem
```
(for development, run `gem install --dev ./product_type_definitions_2020_09_01-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'product_type_definitions_2020_09_01', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'product_type_definitions_2020_09_01', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'product_type_definitions_2020_09_01'

api_instance = AmzSpApi::ProductTypeDefinitions20200901::DefinitionsApi.new
product_type = 'product_type_example' # String | The Amazon product type name.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request. Note: This parameter is limited to one marketplaceId at this time.
opts = { 
  seller_id: 'seller_id_example', # String | A selling partner identifier. When provided, seller-specific requirements and values are populated within the product type definition schema, such as brand names associated with the selling partner.
  product_type_version: 'LATEST', # String | The version of the Amazon product type to retrieve. Defaults to \"LATEST\",. Prerelease versions of product type definitions may be retrieved with \"RELEASE_CANDIDATE\". If no prerelease version is currently available, the \"LATEST\" live version will be provided.
  requirements: 'LISTING', # String | The name of the requirements set to retrieve requirements for.
  requirements_enforced: 'ENFORCED', # String | Identifies if the required attributes for a requirements set are enforced by the product type definition schema. Non-enforced requirements enable structural validation of individual attributes without all the required attributes being present (such as for partial updates).
  locale: 'DEFAULT' # String | Locale for retrieving display labels and other presentation details. Defaults to the default language of the first marketplace in the request.
}

begin
  result = api_instance.get_definitions_product_type(product_type, marketplace_ids, opts)
  p result
rescue AmzSpApi::ProductTypeDefinitions20200901::ApiError => e
  puts "Exception when calling DefinitionsApi->get_definitions_product_type: #{e}"
end

api_instance = AmzSpApi::ProductTypeDefinitions20200901::DefinitionsApi.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  keywords: ['keywords_example'], # Array<String> | A comma-delimited list of keywords to search product types. **Note:** Cannot be used with `itemName`.
  item_name: 'item_name_example', # String | The title of the ASIN to get the product type recommendation. **Note:** Cannot be used with `keywords`.
  locale: 'locale_example', # String | The locale for the display names in the response. Defaults to the primary locale of the marketplace.
  search_locale: 'search_locale_example' # String | The locale used for the `keywords` and `itemName` parameters. Defaults to the primary locale of the marketplace.
}

begin
  result = api_instance.search_definitions_product_types(marketplace_ids, opts)
  p result
rescue AmzSpApi::ProductTypeDefinitions20200901::ApiError => e
  puts "Exception when calling DefinitionsApi->search_definitions_product_types: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::ProductTypeDefinitions20200901::DefinitionsApi* | [**get_definitions_product_type**](docs/DefinitionsApi.md#get_definitions_product_type) | **GET** /definitions/2020-09-01/productTypes/{productType} | 
*AmzSpApi::ProductTypeDefinitions20200901::DefinitionsApi* | [**search_definitions_product_types**](docs/DefinitionsApi.md#search_definitions_product_types) | **GET** /definitions/2020-09-01/productTypes | 

## Documentation for Models

 - [AmzSpApi::ProductTypeDefinitions20200901::Error](docs/Error.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::ProductType](docs/ProductType.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::ProductTypeDefinition](docs/ProductTypeDefinition.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::ProductTypeList](docs/ProductTypeList.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::ProductTypeVersion](docs/ProductTypeVersion.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::PropertyGroup](docs/PropertyGroup.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::SchemaLink](docs/SchemaLink.md)
 - [AmzSpApi::ProductTypeDefinitions20200901::SchemaLinkLink](docs/SchemaLinkLink.md)

## Documentation for Authorization

 All endpoints do not require authorization.

