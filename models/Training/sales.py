import snowflake.snowpark.functions as F
def model(dbt,session):

    df_sql=session.sql("select * from prod.product")
    df_filter = df_sql.filter(F.column("Region")=='West')
    df_final=df_filter.group_by("State").agg(F.sum(F.col("GLOBAL_SALES")).alias("GlobalSales"))

    return df_final
    
    