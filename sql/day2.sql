SHOW DATABASES;
DROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;
USE db_test;
SHOW TABLES;

-- table employee
DROP TABLE IF EXISTS db_test.employee;
CREATE TABLE db_test.employee (
  id           INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  ename        VARCHAR(255) COMMENT '姓名',
  departmentId INT UNSIGNED COMMENT '部门编号 FK' -- ,
  #   FOREIGN KEY (departmentId) REFERENCES db_test.department (id)
)
  COMMENT '员工表';

INSERT INTO db_test.employee VALUES (NULL, 'e1', 1);
INSERT INTO db_test.employee VALUES (NULL, 'e2', 2);
INSERT INTO db_test.employee VALUES (NULL, 'e3', NULL);

DELETE FROM db_test.employee
WHERE id = 12;

SELECT *
FROM db_test.employee;

-- table department
DROP TABLE IF EXISTS db_test.department;
CREATE TABLE db_test.department (
  id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  dname VARCHAR(255) COMMENT '部门名'
)
  COMMENT '部门表';

INSERT IGNORE db_test.department VALUES (NULL, 'd1');
INSERT IGNORE db_test.department VALUES (NULL, 'd2');

SELECT *
FROM db_test.department;

DELETE FROM db_test.department
WHERE id = 1;

-- FK
ALTER TABLE db_test.employee
  ADD CONSTRAINT
FOREIGN KEY (departmentId)
REFERENCES db_test.department (id)
  ON DELETE CASCADE; -- cascading style sheet CSS

SET FOREIGN_KEY_CHECKS = 1;
