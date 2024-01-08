With store_final as (
    Select * From {{ ref('store_tbl_2023') }}
),
store_sales_final as (
    Select * from {{ ref('store_sales_tbl_2023')}}
),

Final_sales_profit as (
    Select S_STORE_NAME,S_COUNTY,sum(SS_SALES_PRICE),sum(SS_NET_PROFIT) From store_final, store_sales_final
    Where S_STORE_SK=SS_STORE_SK
    Group by 1, 2
)

Select * from Final_sales_profit