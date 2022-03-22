CLASS zrt01_rap_insert_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrt01_rap_insert_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DELETE FROM zrt_rap_trav_01.
    DELETE FROM zrt_rap_book_01.

    INSERT zrt_rap_trav_01 FROM (
    SELECT FROM /dmo/travel
    FIELDS
    uuid( ) AS travel_uuid,
    travel_id AS travel_id,
    agency_id AS agency_id,
    customer_id AS customer_id,
    begin_date AS begin_date,
    end_date AS end_date,
    booking_fee AS booking_fee,
    total_price AS total_price,
    currency_code AS currency_code,
    description AS description,
    CASE status
    WHEN 'B' THEN 'A'
    WHEN 'X' THEN 'X'
    ELSE 'O'
    END AS overall_status,
    createdby AS created_by,
    createdat AS created_at,
    lastchangedby AS last_changed_by,
    lastchangedat AS lasr_changed_at,
    lastchangedat AS local_last_changed_at
    ORDER BY travel_id UP TO 300 ROWS
    ) .
    COMMIT WORK.
    INSERT zrt_rap_book_01 FROM (
    SELECT FROM /dmo/booking AS booking
    JOIN zrt_rap_trav_01 AS z
    ON booking~travel_id = z~travel_id
    FIELDS
    uuid( )     AS booking_uuid,
    z~travel_uuid AS travel_uuid,
    booking~booking_id AS booking_id,
    booking~booking_date AS booking_date,
    booking~customer_id AS customer_id,
    booking~carrier_id AS carrier_id,
    booking~connection_id AS connection_id,
    booking~flight_date AS flight_date,
    booking~flight_price AS flight_price,
    booking~currency_code AS currency_code,
    z~created_by AS created_by,
    z~last_changed_by AS last_changed_by,
    z~last_changed_at AS local_last_changed_by

    ).
    COMMIT WORK.
    out->write( 'Updated').
  ENDMETHOD.
ENDCLASS.
