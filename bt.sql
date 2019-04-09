create database ex3;

create table customers
(
  customers_number int auto_increment primary key,
  fullname varchar(50),
  address varchar(100),
  email varchar(50),
  phone int (20)
);

create table accounts
(
  account_number int auto_increment primary key,
  account_type varchar(50),
  date DATE,
  balance varchar(255)
);

create table transactions
(
  tran_number int auto_increment primary key,
  account_number int references accounts(account_number),
  date DATE,
  amounts int(255),
  descriptions varchar(255)
);

alter table accounts add customers_number int references customers(customers_number);

alter table customers add accounts_number int references accounts(account_number);