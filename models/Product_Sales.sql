{{ config(materialized='table') }}

With Product_Sales as (
    Select City, State, sum(NA_Sales), sum(global_sales) from prod.PRODUCT
    Group by 1, 2
)
Select * from Product_Sales