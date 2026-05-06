with ct1 as (
    select 
        p.product_code, 
        p.product, 
        m.manufacturing_cost
    from 
        fact_manufacturing_cost m
    join 
        dim_product p
    on 
        p.product_code = m.product_code
)
select 
    product,
    product_code,
    manufacturing_cost
from 
    ct1
where 
    manufacturing_cost = (select max(manufacturing_cost) from ct1)
union all
select 
    product,
    product_code,
    manufacturing_cost
from 
    ct1
where 
    manufacturing_cost = (select min(manufacturing_cost) from ct1);
