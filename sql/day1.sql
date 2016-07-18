-- DDL

DROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;

DROP TABLE IF EXISTS db_test.table_test;
CREATE TABLE db_test.table_test (
  id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- 主关键字 主键 主码 primary key
  name   VARCHAR(255),
  age    INT(2),
  views  INT UNSIGNED,
  height DOUBLE(8, 6),
  price  DECIMAL(6, 2),
  dob    DATE, -- date of birth
  time   DATETIME
);

INSERT INTO db_test.table_test VALUES (NULL, '张三', 20, 100, 1.71, 5000.5, '1990-6-9', '1999-9-9 13:25:59');

SELECT *
FROM db_test.table_test;