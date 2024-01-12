with code as (
    select * from {{ref('countrydialcode')}}
)
select * from code