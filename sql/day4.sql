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
  RIGHT OUTER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO;

USE db_sample;
SHOW TABLES ;
