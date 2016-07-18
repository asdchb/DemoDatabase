CREATE DATABASE db_ip;

CREATE TABLE db_ip.ip (
  min      VARCHAR(15),
  max      VARCHAR(15),
  location VARCHAR(255)
);

SELECT *
FROM db_ip.ip;

DELETE FROM db_ip.ip;