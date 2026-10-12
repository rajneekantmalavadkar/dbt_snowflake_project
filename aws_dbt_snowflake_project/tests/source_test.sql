{{ config (severity = 'warn') }}

select 1 from {{ source( 'staging', 'bronze_bookings') }} where booking_amount < 300
