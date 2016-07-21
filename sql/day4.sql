SELECT *
FROM scott.emp
  CROSS JOIN scott.dept;

SELECT *
FROM scott.emp;

SELECT *
FROM scott.dept;

SELECT
  ENAME,
  DNAME
FROM scott.emp
  INNER JOIN scott.dept
    ON scott.emp.DEPTNO = scott.dept.DEPTNO;

DESC scott.emp;

DESC scott.dept;

SELECT *
FROM scott.emp
  INNER JOIN scott.dept
    ON scott.emp.MGR = scott.dept.DEPTNO;


SELECT
  e.ENAME,
  e.DEPTNO,
  d.deptno,
  d.DNAME
FROM scott.emp e
  INNER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO;

-- ***
SELECT
  e.ENAME,
  e.DEPTNO,
  d.deptno,
  d.DNAME
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO;

SELECT
  e.ENAME,
  d.deptno,
  d.DNAME
FROM scott.emp e
  INNER JOIN scott.dept d
  USING (DEPTNO);


SELECT
  e.ENAME,
  e.DEPTNO,
  d.deptno,
  d.DNAME
FROM scott.dept d
  LEFT OUTER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO

UNION /*ALL*/

SELECT
  e.ENAME,
  e.DEPTNO,
  d.deptno,
  d.DNAME
FROM scott.dept d
  RIGHT OUTER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO;

USE db_sample;
SHOW TABLES;

SELECT *
FROM scott.emp;

SELECT *
FROM scott.emp
# WHERE DEPTNO = 10 OR DEPTNO = 30;
WHERE DEPTNO IN (10, 30);


SELECT *
FROM scott.emp
WHERE DEPTNO = 10
UNION
SELECT *
FROM scott.emp
WHERE DEPTNO = 30;

# oracle
# union
# intersect
# minus

CREATE TABLE scott.emp_backup
  SELECT *
  FROM scott.emp;

USE scott;

SHOW TABLES;

SELECT *
FROM scott.emp_backup;

CREATE TABLE scott.emp_test
  SELECT
    ENAME,
    JOB,
    HIREDATE
  FROM scott.emp;

DESC scott.emp_backup;
DESC scott.emp;

SELECT *
FROM scott.emp_test;
TRUNCATE TABLE scott.emp_test;

INSERT INTO scott.emp_test (ENAME, JOB)
  SELECT
    ENAME,
    JOB
  FROM scott.emp;

SELECT
  c.cust_name,
  c.cust_contact
FROM db_sample.customers c, db_sample.orders o, db_sample.orderitems oi
WHERE c.cust_id = o.cust_id AND o.order_num = oi.order_num AND oi.prod_id = 'rgan01';

SELECT
  #   DISTINCT
  c.cust_name,
  c.cust_contact
FROM db_sample.customers c INNER JOIN db_sample.orders o
  INNER JOIN db_sample.orderitems oi
    ON c.cust_id = o.cust_id AND o.order_num = oi.order_num
WHERE oi.prod_id = 'rgan01';

DROP VIEW Products_Customers;
CREATE VIEW Products_Customers
AS
  SELECT
    c.cust_name,
    c.cust_contact,
    oi.prod_id
  FROM db_sample.customers c INNER JOIN db_sample.orders o
    INNER JOIN db_sample.orderitems oi
      ON c.cust_id = o.cust_id AND o.order_num = oi.order_num;

USE db_sample;

SHOW TABLES;

SELECT
  cust_name,
  cust_contact
FROM products_customers
WHERE prod_id = 'rgan01';

CREATE TABLE t_products_customers
  SELECT
    c.cust_name,
    c.cust_contact,
    oi.prod_id
  FROM db_sample.customers c INNER JOIN db_sample.orders o
    INNER JOIN db_sample.orderitems oi
      ON c.cust_id = o.cust_id AND o.order_num = oi.order_num;

SELECT DISTINCT cust_name, cust_contact
FROM t_products_customers;

SELECT DISTINCT cust_name, cust_contact
FROM products_customers;

UPDATE customers
SET cust_name = 'zhangsan'
WHERE cust_name = 'Village Toys';
