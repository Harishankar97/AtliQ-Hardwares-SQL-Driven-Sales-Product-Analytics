with ct1 as (
    select 
        p.division,
        p.product,
        p.product_code,
        sum(s.sold_quantity) as total_qty,
        rank() over (
            partition by p.division 
            order by sum(s.sold_quantity) desc
        ) as rnk
    from 
        fact_sales_monthly s
    join 
        dim_product p
    on 
        p.product_code = s.product_code
    where 
        s.fiscal_year = 2021
    group by 
        p.division, 
        p.product, 
        p.product_code
)
select 
    division,
    product_code,
    product,
    total_qty,
    rnk as rank_order
from 
    ct1
where 
    rnk <= 3
order by 
    division, 
    rank_order asc;
