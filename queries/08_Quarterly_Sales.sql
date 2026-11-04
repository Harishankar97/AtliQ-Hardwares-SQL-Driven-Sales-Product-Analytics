with ct1 as (
    select 
        *, 
        date_format(date, '%M') as month_name,
        case
            when monthname(date) in ('September', 'October', 'November') then 'Q1'
            when monthname(date) in ('December', 'January', 'February') then 'Q2'
            when monthname(date) in ('March', 'April', 'May') then 'Q3'
            when monthname(date) in ('June', 'July', 'August') then 'Q4'
        end as Quarter
    from 
        fact_sales_monthly
    where 
        fiscal_year = 2020
)
select 
    ct1.Quarter, 
    sum(ct1.sold_quantity) as sold_qty
from 
    ct1
group by 
    ct1.Quarter
order by 
    sold_qty desc;
