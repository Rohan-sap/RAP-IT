@EndUserText.label: 'Booking Projection view'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity zcrt_rap_booking_01
  as projection on zirt_rap_booking_01 as Booking
{
  key BookingUuid,
      TravelUuid,
      @Search.defaultSearchElement: true
      BookingId,
      BookingDate,
      @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_Customer', element: 'CustomerID' } }]
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['CustomerName']
      CustomerId,
      _Customer.LastName as CustomerName,
      @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_Carrier', element: 'AirlineID' } }]
      @ObjectModel.text.element: ['CarrierName']
      CarrierId,
      _Carrier.Name      as CarrierName,
      @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_Flight', element: 'ConnectionId' } }]


      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_Currency', element: 'Currency' },
                                          additionalBinding: [{ localElement: 'CarrierID', element: 'AirlineID' },
                                                              { localElement: 'FlightDate', element: 'FlightDate', usage: #RESULT },
                                                              { localElement: 'FlightPrice', element: 'Price', usage: #RESULT },
                                                              { localElement: 'CurrencyCode', element: 'CurrencyCode', usage: #RESULT }

                                          ]
                                         }]
      CurrencyCode,
      CreatedBy,
      LastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _travel : redirected to parent ZCRT_RAP_TRAV_01,
      _Carrier,
      _Connection,
      _Currency,
      _Customer,
      _Flight
}
