{{config(materialized='table')}}

select * from {{ref('STG_EMPLOYEE')}}