CREATE DATABASE db_ip;

CREATE TABLE db_ip.ip (
  min      VARCHAR(15),
  max      VARCHAR(15),
  location VARCHAR(255)
);

SELECT *
FROM db_ip.ip;

DELETE FROM db_ip.ip;

DROP TABLE db_ip.ip;

USE db_ip;
SHOW TABLES;

SELECT * FROM db_ip.ip;

SELECT 1+1;     # This comment continues to the end of line
SELECT 1+1;     -- This comment continues to the end of line
SELECT 1 /* this is an in-line comment */ + 1;
SELECT 1+
       /*
       this is a
       multiple-line comment
       */
       1;

