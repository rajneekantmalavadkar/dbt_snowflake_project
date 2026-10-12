{{ config(materialized='incremental') }}

SELECT * FROM {{ source('staging', 'bookings') }}

{% if is_incremental() %}
WHERE created_at > (
    SELECT COALESCE(MAX(created_at),'1900-01-01'::TIMESTAMP)FROM {{ this }}
)
{% endif %}