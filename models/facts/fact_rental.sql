{{config(materialized='table')}}

SELECT 
    r.rental_id,
    c.customer_key,
    s.staff_key,
    1 as rental_quantity
FROM 
    {{ref('stg_rental')}} r
    -- join back to dim_customer
    -- join back to dim_staff
LEFT join
    {{ref('dim_customer')}} c
    on r.customer_id = c.customer_id
LEFT join
    {{ref('dim_staff')}} s
    on r.staff_id = s.staff_id

