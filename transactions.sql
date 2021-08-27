-- SELECT market_code,count(*) AS T_count
--  FROM sales.transactions
-- -- where market_code = "Mark002"
-- group by market_code
-- order by T_count DESC


-- SELECT d.year AS year ,sum(t.sales_amount)
-- from transactions t
-- join date d
-- on t.order_date= d.date
-- group by year

-- SELECT *
-- from transactions t
-- join date d
-- on t.order_date= d.date
-- where d.year=2020

-- select m.markets_name , sum(t.sales_amount) AS Total_amt
-- from transactions t
-- join markets m
-- on t.market_code = m.markets_code
-- group by m.markets_name
-- order by Total_amt DESC

select p.product_type,sum(t.sales_amount) AS total_amt
from transactions t 
join products p 
on t.product_code = p.product_code
group by p.product_type
order by total_amt DESC
