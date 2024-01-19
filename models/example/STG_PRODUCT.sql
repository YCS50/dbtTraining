With Product as (

select A.PRODUCT_ID, A.Product_Name, A.PRODUCT_CATEGORY, A.state, A.Region, A.Brand, B.quantity,  B.Amount
from Prod.Dim_Product A inner join Prod.FACT_PRODUCT_SALES B
on A.PRODUCT_ID=B.PRODUCT_ID

)
Select * from Product