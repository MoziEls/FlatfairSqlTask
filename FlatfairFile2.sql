select sum(sales_amount), 
      age_category, 
      country from (
WITH ages AS
(
SELECT
    customer_id,country,
    -- age(current_date,dob) as age,
    EXTRACT(YEAR FROM age(cast(current_date as date),dob)) age
FROM d_customer
)
SELECT
    sa.customer_id,
    case
                    when  age between 0 and 9 then '(0-9)years'
                    when  age between 10 and 19 then '(10-19)years'
                    when  age between 20 and 29 then '(20-29)years'
		            when  age between 30 and 39 then '(30-39)years'
		            when  age between 40 and 49 then '(40-49)years'
	         	    when  age between 50 and 59 then '(50-59)years'
		            when  age between 60 and 69 then '(60-69)years'
                    when  age >= 70 then '(70+)years'
    end as age_category, sa.sales_amount , country
FROM ages a
join f_sales sa
  on a.customer_id = sa.customer_id
ORDER BY customer_id) tmp_tbl GROUP BY age_category, country;
