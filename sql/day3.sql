SELECT DISTINCT (location)
FROM db_ip.ip
ORDER BY location ASC; -- ascend  descend

USE db_sample;
SHOW TABLES;

SELECT *
FROM db_sample.customers
ORDER BY cust_name DESC , cust_email; -- ASC