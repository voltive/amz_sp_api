# orders-api-model

AmzSpApi::OrdersApiModel - the Ruby gem for the Selling Partner API for Orders

Use the Orders Selling Partner API to programmatically retrieve order information. With this API, you can develop fast, flexible, and custom applications to manage order synchronization, perform order research, and create demand-based decision support tools.   _Note:_ For the JP, AU, and SG marketplaces, the Orders API supports orders from 2016 onward. For all other marketplaces, the Orders API supports orders for the last two years (orders older than this don't show up in the response).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build orders-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./orders-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./orders-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'orders-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'orders-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'orders-api-model'

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
body = AmzSpApi::OrdersApiModel::ConfirmShipmentRequest.new # ConfirmShipmentRequest | Request body of `confirmShipment`.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.confirm_shipment(body, order_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->confirm_shipment: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  result = api_instance.get_order(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An `orderId` is an Amazon-defined order identifier, in 3-7-7 format.


begin
  result = api_instance.get_order_address(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_address: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An `orderId` is an Amazon-defined order identifier, in 3-7-7 format.


begin
  result = api_instance.get_order_buyer_info(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_buyer_info: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.get_order_items(order_id, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_items: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.get_order_items_buyer_info(order_id, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_items_buyer_info: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  result = api_instance.get_order_regulated_info(order_id)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_order_regulated_info: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A list of `MarketplaceId` values. Used to select orders that were placed in the specified marketplaces.  Refer to [Marketplace IDs](https://developer-docs.amazon.com/sp-api/docs/marketplace-ids) for a complete list of `marketplaceId` values.
opts = { 
  created_after: 'created_after_example', # String | Use this date to select orders created after (or at) a specified time. Only orders placed after the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the `CreatedAfter` parameter or the `LastUpdatedAfter` parameter is required. Both cannot be empty. `LastUpdatedAfter` and `LastUpdatedBefore` cannot be set when `CreatedAfter` is set.
  created_before: 'created_before_example', # String | Use this date to select orders created before (or at) a specified time. Only orders placed before the specified time are returned. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: `CreatedBefore` is optional when `CreatedAfter` is set. If specified, `CreatedBefore` must be equal to or after the `CreatedAfter` date and at least two minutes before current time.
  last_updated_after: 'last_updated_after_example', # String | Use this date to select orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: Either the `CreatedAfter` parameter or the `LastUpdatedAfter` parameter is required. Both cannot be empty. `CreatedAfter` or `CreatedBefore` cannot be set when `LastUpdatedAfter` is set.
  last_updated_before: 'last_updated_before_example', # String | Use this date to select orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.  **Note**: `LastUpdatedBefore` is optional when `LastUpdatedAfter` is set. But if specified, `LastUpdatedBefore` must be equal to or after the `LastUpdatedAfter` date and at least two minutes before current time.
  order_statuses: ['order_statuses_example'], # Array<String> | A list of `OrderStatus` values used to filter the results.  **Possible values:** - `PendingAvailability` (This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future.) - `Pending` (The order has been placed but payment has not been authorized.) - `Unshipped` (Payment has been authorized and the order is ready for shipment, but no items in the order have been shipped.) - `PartiallyShipped` (One or more, but not all, items in the order have been shipped.) - `Shipped` (All items in the order have been shipped.) - `InvoiceUnconfirmed` (All items in the order have been shipped. The seller has not yet given confirmation to Amazon that the invoice has been shipped to the buyer.) - `Canceled` (The order has been canceled.) - `Unfulfillable` (The order cannot be fulfilled. This state applies only to Multi-Channel Fulfillment orders.)
  fulfillment_channels: ['fulfillment_channels_example'], # Array<String> | A list that indicates how an order was fulfilled. Filters the results by fulfillment channel.   **Possible values**: `AFN` (fulfilled by Amazon), `MFN` (fulfilled by seller).
  payment_methods: ['payment_methods_example'], # Array<String> | A list of payment method values. Use this field to select orders that were paid with the specified payment methods.  **Possible values**: `COD` (cash on delivery), `CVS` (convenience store), `Other` (Any payment method other than COD or CVS).
  buyer_email: 'buyer_email_example', # String | The email address of a buyer. Used to select orders that contain the specified email address.
  seller_order_id: 'seller_order_id_example', # String | An order identifier that is specified by the seller. Used to select only the orders that match the order identifier. If `SellerOrderId` is specified, then `FulfillmentChannels`, `OrderStatuses`, `PaymentMethod`, `LastUpdatedAfter`, LastUpdatedBefore, and `BuyerEmail` cannot be specified.
  max_results_per_page: 56, # Integer | A number that indicates the maximum number of orders that can be returned per page. Value must be 1 - 100. Default 100.
  easy_ship_shipment_statuses: ['easy_ship_shipment_statuses_example'], # Array<String> | A list of `EasyShipShipmentStatus` values. Used to select Easy Ship orders with statuses that match the specified values. If `EasyShipShipmentStatus` is specified, only Amazon Easy Ship orders are returned.  **Possible values:** - `PendingSchedule` (The package is awaiting the schedule for pick-up.) - `PendingPickUp` (Amazon has not yet picked up the package from the seller.) - `PendingDropOff` (The seller will deliver the package to the carrier.) - `LabelCanceled` (The seller canceled the pickup.) - `PickedUp` (Amazon has picked up the package from the seller.) - `DroppedOff` (The package is delivered to the carrier by the seller.) - `AtOriginFC` (The packaged is at the origin fulfillment center.) - `AtDestinationFC` (The package is at the destination fulfillment center.) - `Delivered` (The package has been delivered.) - `RejectedByBuyer` (The package has been rejected by the buyer.) - `Undeliverable` (The package cannot be delivered.) - `ReturningToSeller` (The package was not delivered and is being returned to the seller.) - `ReturnedToSeller` (The package was not delivered and was returned to the seller.) - `Lost` (The package is lost.) - `OutForDelivery` (The package is out for delivery.) - `Damaged` (The package was damaged by the carrier.)
  electronic_invoice_statuses: ['electronic_invoice_statuses_example'], # Array<String> | A list of `ElectronicInvoiceStatus` values. Used to select orders with electronic invoice statuses that match the specified values.  **Possible values:** - `NotRequired` (Electronic invoice submission is not required for this order.) - `NotFound` (The electronic invoice was not submitted for this order.) - `Processing` (The electronic invoice is being processed for this order.) - `Errored` (The last submitted electronic invoice was rejected for this order.) - `Accepted` (The last submitted electronic invoice was submitted and accepted.)
  next_token: 'next_token_example', # String | A string token returned in the response of your previous request.
  amazon_order_ids: ['amazon_order_ids_example'], # Array<String> | A list of `AmazonOrderId` values. An `AmazonOrderId` is an Amazon-defined order identifier, in 3-7-7 format.
  actual_fulfillment_supply_source_id: 'actual_fulfillment_supply_source_id_example', # String | The `sourceId` of the location from where you want the order fulfilled.
  is_ispu: true, # BOOLEAN | When true, this order is marked to be picked up from a store rather than delivered.
  store_chain_store_id: 'store_chain_store_id_example', # String | The store chain store identifier. Linked to a specific store in a store chain.
  earliest_delivery_date_before: 'earliest_delivery_date_before_example', # String | Use this date to select orders with a earliest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  earliest_delivery_date_after: 'earliest_delivery_date_after_example', # String | Use this date to select orders with a earliest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  latest_delivery_date_before: 'latest_delivery_date_before_example', # String | Use this date to select orders with a latest delivery date before (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
  latest_delivery_date_after: 'latest_delivery_date_after_example' # String | Use this date to select orders with a latest delivery date after (or at) a specified time. The date must be in [ISO 8601](https://developer-docs.amazon.com/sp-api/docs/iso-8601) format.
}

begin
  result = api_instance.get_orders(marketplace_ids, opts)
  p result
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->get_orders: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::OrdersV0Api.new
body = AmzSpApi::OrdersApiModel::UpdateVerificationStatusRequest.new # UpdateVerificationStatusRequest | The request body for the `updateVerificationStatus` operation.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.update_verification_status(body, order_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling OrdersV0Api->update_verification_status: #{e}"
end

api_instance = AmzSpApi::OrdersApiModel::ShipmentApi.new
body = AmzSpApi::OrdersApiModel::UpdateShipmentStatusRequest.new # UpdateShipmentStatusRequest | The request body for the `updateShipmentStatus` operation.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.update_shipment_status(body, order_id)
rescue AmzSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling ShipmentApi->update_shipment_status: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**confirm_shipment**](docs/OrdersV0Api.md#confirm_shipment) | **POST** /orders/v0/orders/{orderId}/shipmentConfirmation | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order**](docs/OrdersV0Api.md#get_order) | **GET** /orders/v0/orders/{orderId} | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order_address**](docs/OrdersV0Api.md#get_order_address) | **GET** /orders/v0/orders/{orderId}/address | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order_buyer_info**](docs/OrdersV0Api.md#get_order_buyer_info) | **GET** /orders/v0/orders/{orderId}/buyerInfo | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order_items**](docs/OrdersV0Api.md#get_order_items) | **GET** /orders/v0/orders/{orderId}/orderItems | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order_items_buyer_info**](docs/OrdersV0Api.md#get_order_items_buyer_info) | **GET** /orders/v0/orders/{orderId}/orderItems/buyerInfo | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_order_regulated_info**](docs/OrdersV0Api.md#get_order_regulated_info) | **GET** /orders/v0/orders/{orderId}/regulatedInfo | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**get_orders**](docs/OrdersV0Api.md#get_orders) | **GET** /orders/v0/orders | 
*AmzSpApi::OrdersApiModel::OrdersV0Api* | [**update_verification_status**](docs/OrdersV0Api.md#update_verification_status) | **PATCH** /orders/v0/orders/{orderId}/regulatedInfo | 
*AmzSpApi::OrdersApiModel::ShipmentApi* | [**update_shipment_status**](docs/ShipmentApi.md#update_shipment_status) | **POST** /orders/v0/orders/{orderId}/shipment | 

## Documentation for Models

 - [AmzSpApi::OrdersApiModel::Address](docs/Address.md)
 - [AmzSpApi::OrdersApiModel::AddressExtendedFields](docs/AddressExtendedFields.md)
 - [AmzSpApi::OrdersApiModel::AmazonPrograms](docs/AmazonPrograms.md)
 - [AmzSpApi::OrdersApiModel::AssociatedItem](docs/AssociatedItem.md)
 - [AmzSpApi::OrdersApiModel::AssociationType](docs/AssociationType.md)
 - [AmzSpApi::OrdersApiModel::AutomatedShippingSettings](docs/AutomatedShippingSettings.md)
 - [AmzSpApi::OrdersApiModel::BusinessHours](docs/BusinessHours.md)
 - [AmzSpApi::OrdersApiModel::BuyerCustomizedInfoDetail](docs/BuyerCustomizedInfoDetail.md)
 - [AmzSpApi::OrdersApiModel::BuyerInfo](docs/BuyerInfo.md)
 - [AmzSpApi::OrdersApiModel::BuyerRequestedCancel](docs/BuyerRequestedCancel.md)
 - [AmzSpApi::OrdersApiModel::BuyerTaxInfo](docs/BuyerTaxInfo.md)
 - [AmzSpApi::OrdersApiModel::BuyerTaxInformation](docs/BuyerTaxInformation.md)
 - [AmzSpApi::OrdersApiModel::ConfirmShipmentErrorResponse](docs/ConfirmShipmentErrorResponse.md)
 - [AmzSpApi::OrdersApiModel::ConfirmShipmentOrderItem](docs/ConfirmShipmentOrderItem.md)
 - [AmzSpApi::OrdersApiModel::ConfirmShipmentOrderItemsList](docs/ConfirmShipmentOrderItemsList.md)
 - [AmzSpApi::OrdersApiModel::ConfirmShipmentRequest](docs/ConfirmShipmentRequest.md)
 - [AmzSpApi::OrdersApiModel::ConstraintType](docs/ConstraintType.md)
 - [AmzSpApi::OrdersApiModel::DeliveryPreferences](docs/DeliveryPreferences.md)
 - [AmzSpApi::OrdersApiModel::EasyShipShipmentStatus](docs/EasyShipShipmentStatus.md)
 - [AmzSpApi::OrdersApiModel::ElectronicInvoiceStatus](docs/ElectronicInvoiceStatus.md)
 - [AmzSpApi::OrdersApiModel::Error](docs/Error.md)
 - [AmzSpApi::OrdersApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::OrdersApiModel::ExceptionDates](docs/ExceptionDates.md)
 - [AmzSpApi::OrdersApiModel::ExportInfo](docs/ExportInfo.md)
 - [AmzSpApi::OrdersApiModel::FulfillmentInstruction](docs/FulfillmentInstruction.md)
 - [AmzSpApi::OrdersApiModel::GetOrderAddressResponse](docs/GetOrderAddressResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrderBuyerInfoResponse](docs/GetOrderBuyerInfoResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrderItemsBuyerInfoResponse](docs/GetOrderItemsBuyerInfoResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrderItemsResponse](docs/GetOrderItemsResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrderRegulatedInfoResponse](docs/GetOrderRegulatedInfoResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrderResponse](docs/GetOrderResponse.md)
 - [AmzSpApi::OrdersApiModel::GetOrdersResponse](docs/GetOrdersResponse.md)
 - [AmzSpApi::OrdersApiModel::ItemBuyerInfo](docs/ItemBuyerInfo.md)
 - [AmzSpApi::OrdersApiModel::MarketplaceId](docs/MarketplaceId.md)
 - [AmzSpApi::OrdersApiModel::MarketplaceTaxInfo](docs/MarketplaceTaxInfo.md)
 - [AmzSpApi::OrdersApiModel::Measurement](docs/Measurement.md)
 - [AmzSpApi::OrdersApiModel::Money](docs/Money.md)
 - [AmzSpApi::OrdersApiModel::OpenInterval](docs/OpenInterval.md)
 - [AmzSpApi::OrdersApiModel::OpenTimeInterval](docs/OpenTimeInterval.md)
 - [AmzSpApi::OrdersApiModel::Order](docs/Order.md)
 - [AmzSpApi::OrdersApiModel::OrderAddress](docs/OrderAddress.md)
 - [AmzSpApi::OrdersApiModel::OrderBuyerInfo](docs/OrderBuyerInfo.md)
 - [AmzSpApi::OrdersApiModel::OrderItem](docs/OrderItem.md)
 - [AmzSpApi::OrdersApiModel::OrderItemBuyerInfo](docs/OrderItemBuyerInfo.md)
 - [AmzSpApi::OrdersApiModel::OrderItemBuyerInfoList](docs/OrderItemBuyerInfoList.md)
 - [AmzSpApi::OrdersApiModel::OrderItemList](docs/OrderItemList.md)
 - [AmzSpApi::OrdersApiModel::OrderItems](docs/OrderItems.md)
 - [AmzSpApi::OrdersApiModel::OrderItemsBuyerInfoList](docs/OrderItemsBuyerInfoList.md)
 - [AmzSpApi::OrdersApiModel::OrderItemsInner](docs/OrderItemsInner.md)
 - [AmzSpApi::OrdersApiModel::OrderItemsList](docs/OrderItemsList.md)
 - [AmzSpApi::OrdersApiModel::OrderList](docs/OrderList.md)
 - [AmzSpApi::OrdersApiModel::OrderRegulatedInfo](docs/OrderRegulatedInfo.md)
 - [AmzSpApi::OrdersApiModel::OrdersList](docs/OrdersList.md)
 - [AmzSpApi::OrdersApiModel::OtherDeliveryAttributes](docs/OtherDeliveryAttributes.md)
 - [AmzSpApi::OrdersApiModel::PackageDetail](docs/PackageDetail.md)
 - [AmzSpApi::OrdersApiModel::PackageReferenceId](docs/PackageReferenceId.md)
 - [AmzSpApi::OrdersApiModel::PaymentExecutionDetailItem](docs/PaymentExecutionDetailItem.md)
 - [AmzSpApi::OrdersApiModel::PaymentExecutionDetailItemList](docs/PaymentExecutionDetailItemList.md)
 - [AmzSpApi::OrdersApiModel::PaymentMethodDetailItemList](docs/PaymentMethodDetailItemList.md)
 - [AmzSpApi::OrdersApiModel::PointsGrantedDetail](docs/PointsGrantedDetail.md)
 - [AmzSpApi::OrdersApiModel::PreferredDeliveryTime](docs/PreferredDeliveryTime.md)
 - [AmzSpApi::OrdersApiModel::PrescriptionDetail](docs/PrescriptionDetail.md)
 - [AmzSpApi::OrdersApiModel::ProductInfoDetail](docs/ProductInfoDetail.md)
 - [AmzSpApi::OrdersApiModel::PromotionIdList](docs/PromotionIdList.md)
 - [AmzSpApi::OrdersApiModel::RegulatedInformation](docs/RegulatedInformation.md)
 - [AmzSpApi::OrdersApiModel::RegulatedInformationField](docs/RegulatedInformationField.md)
 - [AmzSpApi::OrdersApiModel::RegulatedOrderVerificationStatus](docs/RegulatedOrderVerificationStatus.md)
 - [AmzSpApi::OrdersApiModel::RejectionReason](docs/RejectionReason.md)
 - [AmzSpApi::OrdersApiModel::ShipmentStatus](docs/ShipmentStatus.md)
 - [AmzSpApi::OrdersApiModel::ShippingConstraints](docs/ShippingConstraints.md)
 - [AmzSpApi::OrdersApiModel::SubstitutionOption](docs/SubstitutionOption.md)
 - [AmzSpApi::OrdersApiModel::SubstitutionOptionList](docs/SubstitutionOptionList.md)
 - [AmzSpApi::OrdersApiModel::SubstitutionPreferences](docs/SubstitutionPreferences.md)
 - [AmzSpApi::OrdersApiModel::TaxClassification](docs/TaxClassification.md)
 - [AmzSpApi::OrdersApiModel::TaxCollection](docs/TaxCollection.md)
 - [AmzSpApi::OrdersApiModel::TransparencyCode](docs/TransparencyCode.md)
 - [AmzSpApi::OrdersApiModel::TransparencyCodeList](docs/TransparencyCodeList.md)
 - [AmzSpApi::OrdersApiModel::UpdateShipmentStatusErrorResponse](docs/UpdateShipmentStatusErrorResponse.md)
 - [AmzSpApi::OrdersApiModel::UpdateShipmentStatusRequest](docs/UpdateShipmentStatusRequest.md)
 - [AmzSpApi::OrdersApiModel::UpdateVerificationStatusErrorResponse](docs/UpdateVerificationStatusErrorResponse.md)
 - [AmzSpApi::OrdersApiModel::UpdateVerificationStatusRequest](docs/UpdateVerificationStatusRequest.md)
 - [AmzSpApi::OrdersApiModel::UpdateVerificationStatusRequestBody](docs/UpdateVerificationStatusRequestBody.md)
 - [AmzSpApi::OrdersApiModel::ValidVerificationDetail](docs/ValidVerificationDetail.md)
 - [AmzSpApi::OrdersApiModel::VerificationDetails](docs/VerificationDetails.md)
 - [AmzSpApi::OrdersApiModel::VerificationStatus](docs/VerificationStatus.md)

## Documentation for Authorization

 All endpoints do not require authorization.

