@EndUserText.label: 'Travel projection View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZCRT_RAP_TRAV_01
  as projection on ZIRT_RAP_TRAV_01 as Travel
{
  key TravelUuid,
      @Search.defaultSearchElement: true
      TravelId,
//      @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_agency', element: 'AgencyID' } }]
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['AgencyName']
      AgencyId,
      _Agency.Name       as AgencyName,
      @ObjectModel.text.element: ['CustomerName']
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_Customer', element: ' CustomerID' } }]
      CustomerId,
      _Customer.LastName as CustomerName,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_Currency', element: 'Currency' } }]
      CurrencyCode,
      Description,
      TravelStatus,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Agency,
      _booking : redirected to composition child zcrt_rap_booking_01,
      _Currency,
      _Customer
}
