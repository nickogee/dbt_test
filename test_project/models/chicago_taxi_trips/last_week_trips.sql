select 
    *
from
    {{ source('ctp', 'trips') }}
where
    trip_start_timestamp = 
        timestamp_sub( (select max(trip_start_timestamp)
        from  {{ source('ctp', 'trips') }}),
        interval 7 day 
        )