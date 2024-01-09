{{ config(materialized='table' )}}
With store_2023 as (
    Select S_STORE_SK, S_STORE_ID, S_STORE_NAME, S_COUNTY From {{ source('test_prod', 'store_2023')}}
)
Select * From store_2023