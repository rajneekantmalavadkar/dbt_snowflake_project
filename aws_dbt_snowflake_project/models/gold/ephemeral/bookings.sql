{{ config(materialized='ephemeral') }}

with bookings as(
    select 
        booking_id,
        booking_date,
        property_type,
        silver_hosts_created_at,
    from {{ ref('obt')}}
)
select * from bookings