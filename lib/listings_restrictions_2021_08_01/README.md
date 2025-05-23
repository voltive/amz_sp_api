# listings_restrictions_2021_08_01

AmzSpApi::ListingsRestrictions20210801 - the Ruby gem for the Selling Partner API for Listings Restrictions

The Selling Partner API for Listings Restrictions provides programmatic access to restrictions on Amazon catalog listings.  For more information, see the [Listings Restrictions API Use Case Guide](doc:listings-restrictions-api-v2021-08-01-use-case-guide).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2021-08-01
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build listings_restrictions_2021_08_01.gemspec
```

Then either install the gem locally:

```shell
gem install ./listings_restrictions_2021_08_01-0.1.0.gem
```
(for development, run `gem install --dev ./listings_restrictions_2021_08_01-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'listings_restrictions_2021_08_01', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'listings_restrictions_2021_08_01', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'listings_restrictions_2021_08_01'

api_instance = AmzSpApi::ListingsRestrictions20210801::ListingsApi.new
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.
seller_id = 'seller_id_example' # String | A selling partner identifier, such as a merchant account.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  condition_type: 'condition_type_example', # String | The condition used to filter restrictions.
  reason_locale: 'reason_locale_example' # String | A locale for reason text localization. When not provided, the default language code of the first marketplace is used. Examples: \"en_US\", \"fr_CA\", \"fr_FR\". Localized messages default to \"en_US\" when a localization is not available in the specified locale.
}

begin
  result = api_instance.get_listings_restrictions(asin, seller_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::ListingsRestrictions20210801::ApiError => e
  puts "Exception when calling ListingsApi->get_listings_restrictions: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::ListingsRestrictions20210801::ListingsApi* | [**get_listings_restrictions**](docs/ListingsApi.md#get_listings_restrictions) | **GET** /listings/2021-08-01/restrictions | 

## Documentation for Models

 - [AmzSpApi::ListingsRestrictions20210801::Error](docs/Error.md)
 - [AmzSpApi::ListingsRestrictions20210801::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::ListingsRestrictions20210801::Link](docs/Link.md)
 - [AmzSpApi::ListingsRestrictions20210801::Reason](docs/Reason.md)
 - [AmzSpApi::ListingsRestrictions20210801::Restriction](docs/Restriction.md)
 - [AmzSpApi::ListingsRestrictions20210801::RestrictionList](docs/RestrictionList.md)

## Documentation for Authorization

 All endpoints do not require authorization.

