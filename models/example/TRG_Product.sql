{{
    config(
        materialized='incremental',
        unique_key='SRC_PRODUCT_ID',
        incremental_strategy='delete+insert'
    )
}}

select * from PROD.SRC_PRODUCT

{% if is_incremental() %}

    where updated_at > (select max(updated_at) from {{ this }})
    
{% endif %}