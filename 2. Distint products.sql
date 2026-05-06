select 
    count(distinct case when fiscal_year = 2021 then product_code end) as distinct_products_2021,
    count(distinct case when fiscal_year = 2020 then product_code end) as distinct_products_2020,
    round(
        (
            (
                count(distinct case when fiscal_year = 2021 then product_code end) -
                count(distinct case when fiscal_year = 2020 then product_code end)
            ) * 1.0 / 
            count(distinct case when fiscal_year = 2020 then product_code end)
        ) * 100,
        2
    ) as percentage_change
from 
    fact_sales_monthly
where 
    fiscal_year in (2020, 2021);
