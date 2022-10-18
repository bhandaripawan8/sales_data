select * from sales;  

-- 1. gross income according to the branch
SELECT DISTINCT(branch) FROM sales;

SELECT branch as type_of_branch, count(branch) as branches, sum(gross_income) as total_income FROM sales
GROUP BY branch;


-- 2. number of customer type
SELECT DISTINCT(customer_type) FROM sales;

SELECT customer_type, count(customer_type) FROM sales
GROUP BY customer_type;

-- 3. Number of product line
SELECT DISTINCT(product_line) FROM sales;

SELECT product_line AS products, SUM(total) as total 
FROM sales
GROUP BY product_line;
 
 
 -- 4. Number of payment method 
 SELECT DISTINCT(COUNT(payment)) as Number_of_payments, payment as payment_type
 FROM sales
 GROUP BY payment;
 
 -- gross income by months
SELECT gross_income AS monthly_income, date  FROM sales
ORDER BY date ASC;
 
 SELECT date FROM sales;
 
 SELECT date, SUM(gross_income) FROM sales
 WHERE date BETWEEN '01-01-2019' AND '01-30-2019';
 
  SELECT DISTINCT(date) FROM sales
 WHERE date BETWEEN '01/01/2019' AND '01/30/2019';

 
 
