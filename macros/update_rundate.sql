{% macro update_rundate() %}
update prod.model_param set rundate = rundate+7
where model_name ='STG_PRODUCT' 
{% endmacro%}