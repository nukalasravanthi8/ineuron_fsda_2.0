---new table
create OR REPLACE table SN_sales1(
order_id varchar(30),
order_date varchar(20),
ship_date varchar(20),
ship_mode	varchar(30),
customer_name	varchar(60),
segment	varchar(40),
state	varchar(40),
country	varchar(40),
market	varchar(40),
region	varchar(40),
product_id	varchar(40),
category varchar(40),
sub_category varchar(40),
product_name varchar(200),
sales decimal(10,2),
quantity int,
discount decimal(10,2),
profit decimal(10,2),
shipping_cost decimal(10,2),
order_priority	varchar(20),
year int
);
select *from SN_sales1;
--SET PRIMARY KEY--
ALTER TABLE  SN_sales1 ADD PRIMARY KEY (order_id) ;
DESCRIBE TABLE SN_sales1;
select * from  SN_sales1;
            
           
SELECT ORDER_ID, SHIP_DATE - order_date AS days_taken
FROM SN_sales1
WHERE SHIP_DATE IS NOT NULL;
           
ALTER TABLE SN_sales1 MODIFY order_date DATE;
UPDATE SN_sales1 SET order_date_new = CAST(order_date_new AS DATE);

           
--FLAG IF DISCOUNT IS >0 YES ELSE NO

SELECT * ,
CASE 
    WHEN discount > '0' THEN 'YES'
    ELSE 'FALSE'
    END AS discount_FLAG
FROM SN_sales1;
           
           
----extract orderid and creted a new column------

SELECT SPLIT(ORDER_ID,'-') FROM SN_sales;
SELECT *,SPLIT_PART(ORDER_ID, '-',3) AS ORDER_ENDING FROM SN_sales1;
          
           