{% set nights_booked = 1 %}
{% set flag = false %}

select * from {{ ref("bronze_bookings") }}
where nights_booked > {{ nights_booked }}  
-- where nights_booked > 1

--apply if else
select * from {{ ref("bronze_bookings") }}
{% if flag = flase %}
where nights_booked > 1
{% else %}
where nights_booked < 1
{% endif %}


select * from {{ ref("bronze_listing")}}