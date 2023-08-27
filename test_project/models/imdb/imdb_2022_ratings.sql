
{{ config(materialized='view') }}

select
    title,
    average_rating
from
   {{ ref("imdb_title_basics") }}
left join
    {{ ref("imdb_title_ratings") }}
using (title_id)
where
    num_votes > 100
    and year >= 2022
