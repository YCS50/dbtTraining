With Product as (

select A.PRODUCT_ID, A.Product_Name, A.state, A.Region, B.Unit_SOLD, B.Amount
from Prod.Dim_Product A inner join Prod.Fact_Sales B
on A.PRODUCT_ID=B.PRODUCT_ID

)
Select * from Product