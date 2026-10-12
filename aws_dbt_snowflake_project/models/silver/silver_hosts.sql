{{ config(materialized='incremental', unique_key='host_id') }}

select
    host_id,
    replace(host_name, ' ', '_') as host_name,
    host_since,
    response_rate,
    case
        when response_rate >95 then 'Excellent'
        when response_rate >80 then 'Good'
        else 'Average'
    end as response_rate_quality,
    created_at
from {{ ref('bronze_hosts') }}
