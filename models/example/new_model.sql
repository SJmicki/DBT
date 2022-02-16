{{config(materialized='table')}}

select * from {{ source("mysql_rds_sakila","ACTOR")}}
where _fivetran_deleted = FALSE