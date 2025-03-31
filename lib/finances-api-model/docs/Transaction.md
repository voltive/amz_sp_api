# AmzSpApi::FinancesApiModel::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selling_partner_metadata** | [**SellingPartnerMetadata**](SellingPartnerMetadata.md) |  | [optional] 
**related_identifiers** | [**RelatedIdentifiers**](RelatedIdentifiers.md) |  | [optional] 
**transaction_type** | **String** | The type of transaction.  Possible values:  * Shipment | [optional] 
**transaction_id** | **String** | The unique identifier for the transaction. | [optional] 
**transaction_status** | **String** | The status for the transaction.   Possible values:  * Deferred *Released | [optional] 
**description** | **String** | Describes the reasons for the transaction.  Example: &#x27;Order Payment&#x27;,&#x27;Refund Order&#x27; | [optional] 
**posted_date** | **Date** |  | [optional] 
**total_amount** | [**Currency**](Currency.md) |  | [optional] 
**marketplace_details** | [**MarketplaceDetails**](MarketplaceDetails.md) |  | [optional] 
**items** | [**Items**](Items.md) |  | [optional] 
**contexts** | [**Contexts**](Contexts.md) |  | [optional] 
**breakdowns** | [**Breakdowns**](Breakdowns.md) |  | [optional] 

