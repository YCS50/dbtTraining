{{ config(materialized='table' )}}
With store_tbl_2023 as (
    Select S_STORE_SK, S_STORE_ID, S_STORE_NAME, S_COUNTY From Prod.Store_2023
)
Select * From store_tbl_2023