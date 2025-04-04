# AmzSpApi::ReplenishmentApiModel::GetSellingPartnerMetricsResponseMetric

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**not_delivered_due_to_oos** | **Float** | The percentage of items that were not shipped out of the total shipped units over a period of time due to being out of stock. Applicable to PERFORMANCE timePeriodType. | [optional] 
**total_subscriptions_revenue** | **Float** | The revenue generated from subscriptions over a period of time. Applicable for both the PERFORMANCE and FORECAST timePeriodType. | [optional] 
**shipped_subscription_units** | [**BigDecimal**](BigDecimal.md) | The number of units shipped to the subscribers over a period of time. Applicable for both the PERFORMANCE and FORECAST timePeriodType. | [optional] 
**active_subscriptions** | [**BigDecimal**](BigDecimal.md) | The number of active subscriptions present at the end of the period. Applicable to PERFORMANCE timePeriodType. | [optional] 
**subscriber_average_revenue** | **Float** | The average revenue per subscriber of the program over a period of past 12 months for sellers and 6 months for vendors. Applicable to PERFORMANCE timePeriodType. | [optional] 
**non_subscriber_average_revenue** | **Float** | The average revenue per non-subscriber of the program over a period of past 12 months for sellers and 6 months for vendors. Applicable to PERFORMANCE timePeriodType. | [optional] 
**lost_revenue_due_to_oos** | **Float** | The revenue that would have been generated had there not been out of stock. Applicable to PERFORMANCE timePeriodType. | [optional] 
**subscriber_average_reorders** | **Float** | The average reorders per subscriber of the program over a period of 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**non_subscriber_average_reorders** | **Float** | The average reorders per non-subscriber of the program over a period of past 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**coupons_revenue_penetration** | **Float** | The percentage of revenue from ASINs with coupons out of total revenue from all ASINs. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_from_subscriptions_with_multiple_deliveries** | **Float** | The subscription revenue generated from subscriptions with over two deliveries over the past 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_from_active_subscriptions_with_single_delivery** | **Float** | The subscription revenue generated from active subscriptions with one delivery over the past 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_from_cancelled_subscriptions_after_single_delivery** | **Float** | The subscription revenue generated from subscriptions which are cancelled after one delivery over the past 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**subscriber_retention_for30_days** | **Float** | The percentage of subscriptions retained after 30 days of subscription creation. Applicable to PERFORMANCE timePeriodType. | [optional] 
**subscriber_retention_for90_days** | **Float** | The percentage of subscriptions retained after 90 days of subscription creation. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_penetration_for0_percent_seller_funding** | **Float** | The percentage of subscription revenue generated by offers with 0% seller-funded discount over the last 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_penetration_for5_percent_seller_funding** | **Float** | [Applicable only for Sellers] The percentage of subscription revenue generated by offers with 5% seller-funded discount over the last 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_penetration_for10_percent_seller_funding** | **Float** | [Applicable only for Sellers] The percentage of subscription revenue generated by offers with 10% seller-funded discount over the last 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**revenue_penetration_for5_plus_percent_seller_funding** | **Float** | [Applicable only for vendors] The percentage of subscription revenue generated by offers with 5% or above seller-funded discount over the last 12 months. Applicable to PERFORMANCE timePeriodType. | [optional] 
**share_of_coupon_subscriptions** | **Float** | The percentage of new subscriptions acquired through coupons. Applicable to PERFORMANCE timePeriodType. | [optional] 
**time_interval** | [**TimeInterval**](TimeInterval.md) |  | [optional] 
**currency_code** | **String** | The currency code in ISO 4217 format. | [optional] 

