

Select A.department_name, A.salary, dense_rank() over(order by salary desc) as rank_ from (

    {{ deptsalary() }}

) as A
QUALIFY rank_ <3