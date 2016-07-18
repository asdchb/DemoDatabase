SHOW DATABASES;

CREATE DATABASE test;

USE test;

CREATE TABLE user (
  id       INT,
  username VARCHAR(20),
  password VARCHAR(20)
);

SHOW TABLES;

INSERT INTO user VALUES (1, '张三', '123');

SELECT *
FROM user;
