use sales;

create OR REPLACE table SN_sales(
order_id varchar(30),
order_date varchar(30),
order_date_new varchar(30),
ship_date varchar(30),
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
sales int,
quantity int,
discount decimal(10,2),
profit decimal(10,2),
shipping_cost decimal(10,2),
order_priority	varchar(20),
year int
);



--SET PRIMARY KEY--
ALTER TABLE  SN_sales ADD PRIMARY KEY (order_id) ;
DESCRIBE TABLE SN_sales;
select * from  SN_sales;
 
 
--CHANGE DATA TYPE--
ALTER SN_sales UPDATE COLUMN order_date_new, TO_DATE(order_date_new,'DD-MM-YYYY') FROM SN_sales;
SELECT ship_date, TO_DATE(ship_date,'DD-MM-YYYY')FROM SN_sales;

--FLAG IF DISCOUNT IS >0 YES ELSE NO
ALTER TABLE SN_sales 
ADD COLUMN FLAGVIEW VARCHAR(20) ;

SELECT * ,
CASE 
    WHEN discount > '0' THEN 'YES'
    ELSE 'FALSE'
    END AS discount_FLAG
FROM SN_sales;

SELECT ORDER_ID,SUBSTRING(ORDER_ID,-5,8) AS ORDER_INTITIALS FROM SN_sales;
