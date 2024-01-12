{{config(materialized='table')}}

select first_name, last_name, salary, dense_rank() over(order by salary desc) as rank_ from prod.employee
qualify rank_ < 6