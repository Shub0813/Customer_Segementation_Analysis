use project_customer_segmentation;

select * from customer;

#1.How is the shopping distribution according to gender

 SELECT Gender, COUNT(*) AS Shopping_Distribution
FROM customer
GROUP BY Gender;



#2.Which gender did we sell more products to

select gender, sum(quantity) as total_product_sold
from customer
group by gender
order by total_product_sold desc;



#3.	Which gender generated more revenue

select gender, sum(price) as total_revenue
from customer
group by gender
order by total_revenue desc;



#4.Distribution of purchase categories relative to other columns

select category,gender,age,
count(*)as purchase_count
from customer
group by category,gender,age
order by category,purchase_count desc;


#5.How is the shopping distribution according to age

select age, count(*) as shopping_distribution
from customer
group by age
order by shopping_distribution desc;



#6.Which age cat did we sell more products to?

 select age,
 sum(quantity) as totalquantity
 from customer
 group by age
 order by totalquantity desc;
 
# method of query 2
 
 SELECT 
    age, 
    case
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END AS AgeCategory,
    SUM(Quantity) AS TotalQuantity
FROM 
    customer
GROUP BY 
    age,
    case
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END
ORDER BY 
    TotalQuantity DESC;
    
    
    
    
 
 #7.Which age cat generated more revenue
 
 select age, sum(price) as total_revenue
 from
 customer
 group by age
 order by total_revenue desc;
 
 
 
 # 8.Distribution of purchase categories relative to other columns
 
 select category,gender,age,
count(*)as purchase_count
from customer
group by category,gender,age
order by category,purchase_count desc;



#9.Does the payment method have a relation with other columns
 
 SELECT 
    gender,
    age,
    category,
    payment_method, 
    COUNT(*) AS purchase_count
FROM customer
GROUP BY gender, age, category, payment_method
 order by payment_method,purchase_count desc;
 
 
 
 #10.How is the distribution of the payment method
 
 select payment_method,
 count(*) as payment_distribution
 from customer
 group by payment_method
 order by payment_distribution;
 -- -- -- -- --  -- -- -- -- -- -- -- -- 
