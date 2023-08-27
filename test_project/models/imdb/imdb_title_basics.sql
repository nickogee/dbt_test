
{{ config(materialized='table') }}

select
    tconst as title_id,
    primary_title as title,
    start_year as year
from
    `bigquery-public-data.imdb.title_basics`
where
    end_year is null