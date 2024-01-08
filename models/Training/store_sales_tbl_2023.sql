{{ config(materialized='table' )}}
With store_sales_tbl_2023 as (
    Select SS_STORE_SK,SS_QUANTITY,SS_SALES_PRICE,SS_NET_PROFIT From Prod.Store_sales_2023
)
Select * From store_sales_tbl_2023