with ct1 as (
    select 
        p.segment,
        count(distinct case when s.fiscal_year = 2020 then p.product_code end) as distinct_products_2020,
        count(distinct case when s.fiscal_year = 2021 then p.product_code end) as distinct_products_2021
    from 
        fact_sales_monthly s
    join 
        dim_product p
    on 
        p.product_code = s.product_code
    group by 
        p.segment
)
select 
    segment,
    distinct_products_2020,
    distinct_products_2021,
    (distinct_products_2021 - distinct_products_2020) as difference
from 
    ct1
order by 
    difference desc;
