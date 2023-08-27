
{{ config(materialized='table') }}

select
    tconst as title_id,
    average_rating,
    num_votes
from
    `bigquery-public-data.imdb.title_ratings`
