{# in dbt Develop #}

{% set old_fct_orders_query %}
  select *
  from prod.product
  where year_ > 2016 
{% endset %}

{% set new_fct_orders_query %}
  select *
  from prod.product
  where year_ < 2017
{% endset %}

{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query,
    primary_key="product_id"
) }}

