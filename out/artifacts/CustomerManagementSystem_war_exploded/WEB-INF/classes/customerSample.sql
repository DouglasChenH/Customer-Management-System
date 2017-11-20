CREATE DATABASE customer;
USE customer;
DROP TABLE IF EXISTS t_customer;
CREATE TABLE IF NOT EXISTS t_customer (
  Id varchar(50) NOT NULL,
  name varchar(50),
  gender varchar(20),
  phone varchar(50),
  email varchar(50),
  description varchar(50),
  PRIMARY KEY (id)
);
