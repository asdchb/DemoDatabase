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
  d.deptno,
  d.DNAME
FROM scott.emp e
  INNER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO;
