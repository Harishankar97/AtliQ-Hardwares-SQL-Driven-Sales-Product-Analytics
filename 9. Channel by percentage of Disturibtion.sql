with ct1 as (
    select 
        c.channel, 
        round(sum(s.sold_quantity * g.gross_price), 2) as total_gross_price
    from 
        fact_sales_monthly s
    join 
        dim_customer c
        on c.customer_code = s.customer_code
    join 
        fact_gross_price g
        on g.product_code = s.product_code
    where 
        s.fiscal_year = 2021
    group by 
        c.channel
)
select 
    ct1.channel,
    concat(round(total_gross_price / 1000000, 2), 'M') as total_gross_price,
    round((total_gross_price / sum(total_gross_price) over ()) * 100, 2) as percentage_contribution
from 
    ct1
order by 
    percentage_contribution desc;
