select 
    c.customer_code, 
    c.customer, 
    round(avg(p.pre_invoice_discount_pct), 4) as pct_percentage
from 
    dim_customer c
join 
    fact_pre_invoice_deductions p
on 
    c.customer_code = p.customer_code
where 
    sub_zone = "India" 
    and p.fiscal_year = "2021"
group by 
    c.customer, 
    c.customer_code
order by 
    pct_percentage desc
limit 5;
