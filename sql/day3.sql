SELECT DISTINCT (location)
FROM db_ip.ip
ORDER BY location ASC; -- ascend  descend

USE db_sample;
SHOW TABLES;

SELECT *
FROM db_sample.customers
ORDER BY cust_name DESC, cust_email; -- ASC

SELECT *
FROM db_sample.products
WHERE vend_id NOT IN ('dll01', 'brs01');

SELECT *
FROM db_sample.products
WHERE prod_price NOT BETWEEN 5.99 AND 8.99; -- [5, 10]

SELECT prod_name '商品 名称'
FROM db_sample.products;

SELECT p.prod_name
FROM db_sample.products p;

SELECT p.prod_name
FROM db_sample.products p;

SELECT *
FROM db_sample.customers
WHERE cust_email IS NULL;

UPDATE db_sample.customers
SET cust_email = NULL
WHERE cust_id = '1000000001';

DESC db_sample.customers;

SELECT *
FROM db_sample.products
WHERE prod_name LIKE '%teddy%';

USE scott;

SHOW TABLES;

DESC scott.emp;
DESC scott.dept;

SELECT *
FROM scott.salgrade;

SELECT *
FROM scott.emp
WHERE ENAME LIKE '_A%';

SELECT *
FROM scott.emp
WHERE ENAME REGEXP '^[A-z]{1}A.*$';

SELECT
  ENAME,
  SAL,
  COMM,
  SAL + ifnull(COMM, 0)
FROM scott.emp;


