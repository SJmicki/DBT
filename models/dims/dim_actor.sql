{{config(materialized='table')}}

select
    actor_id as id,
    CONCAT_WS(' ', last_name, first_name) as full_name
from 
    {{ ref('stg_actor')}}
