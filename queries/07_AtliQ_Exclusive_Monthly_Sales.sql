select 
    date_format(s.date, '%M') as month_name,
    s.fiscal_year,
    round(sum(g.gross_price * s.sold_quantity), 2) as total_gross_price
from 
    fact_sales_monthly s
join 
    fact_gross_price g
on 
    s.product_code = g.product_code
join 
    dim_customer c
on 
    c.customer_code = s.customer_code
where 
    c.customer = 'Atliq Exclusive'
group by 
    month_name, 
    s.fiscal_year
order by 
    s.fiscal_year;
