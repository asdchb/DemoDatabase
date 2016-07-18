-- DDL

DROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;

DROP TABLE IF EXISTS db_test.table_test;
CREATE TABLE db_test.table_test (
  id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- 主关键字 主键 主码 primary key
  name   VARCHAR(255) NOT NULL,
  age    INT(2) UNSIGNED ZEROFILL,
  views  INT UNSIGNED,
  height DOUBLE(8, 6),
  price  DECIMAL(6, 2),
  dob    DATE UNIQUE, -- date of birth
  time   DATETIME
);

INSERT INTO db_test.table_test VALUES (NULL, 'zhangsan', 2, 100, 1.71, 5000.5, NULL, '1999-9-9 13:25:59');

SELECT *
FROM db_test.table_test;

DELETE FROM db_test.table_test;

TRUNCATE TABLE db_test.table_test;

CREATE TABLE db_test.sc (
  id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  sid   INT UNSIGNED,
  cid   INT UNSIGNED,
  grade TINYINT UNSIGNED
);

INSERT INTO db_test.sc VALUES (NULL, 1, 1, 60);
INSERT INTO db_test.sc VALUES (NULL, 1, 2, 60);
INSERT INTO db_test.sc VALUES (NULL, 2, 2, 60);
SELECT *
FROM db_test.sc;

-- table student 从表 子表
DROP TABLE IF EXISTS db_test.student;
CREATE TABLE db_test.student (
  id            INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  sno           CHAR(8),
  name          VARCHAR(20),
  age           INT,
  department_id INT UNSIGNED,
  FOREIGN KEY (department_id) REFERENCES db_test.department (id)
);

# ALTER TABLE db_test.student
#   ADD CONSTRAINT fk_student_department_id
# FOREIGN KEY (department_id)
# REFERENCES db_test.department (id);

-- table department 主表 父表
DROP TABLE IF EXISTS db_test.department;
CREATE TABLE db_test.department (
  id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20),
  tel  VARCHAR(20)
);

INSERT INTO db_test.student VALUES (NULL, '20160001', 'zhangsan', 18, 1);
INSERT INTO db_test.student VALUES (NULL, '20160002', 'lisi', 18, 1);
INSERT INTO db_test.student VALUES (NULL, '20160003', 'wanger', 18, 2);
INSERT INTO db_test.student VALUES (NULL, '20160004', 'tester', 18, 3);

INSERT INTO db_test.department VALUES (NULL, 'CS', '62780001');
INSERT INTO db_test.department VALUES (NULL, 'EE', '62780002');

SELECT *
FROM db_test.student;

SELECT *
FROM db_test.department;

SELECT
  s.name,
  d.name,
  d.tel
FROM db_test.student s, db_test.department d
WHERE s.department_id = d.id;