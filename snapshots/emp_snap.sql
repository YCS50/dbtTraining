{% snapshot employee_snapshot %}    --table name to be created

{{
    config(
      target_database='DBT_DB',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from PROD.STG_EMP01        --source table name


{% endsnapshot %}