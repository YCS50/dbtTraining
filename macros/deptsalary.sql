 {% macro deptsalary() %}
 
 Select d.department_name, sum(e.salary) as salary From prod.employee e join prod.department d on
        e.department_id = d.department_id
    group by 1

{% endmacro %}