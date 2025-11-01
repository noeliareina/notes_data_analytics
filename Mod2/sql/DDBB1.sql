DROP DATABASE supermarket;
CREATE DATABASE supermarket;

USE supermarket;

CREATE TABLE products (
	idProducts int auto_increment primary key,
    name_product varchar(50) not null,
    price float not null,
    stock int not null,
    description_product varchar(200),
    expire_product date
);

CREATE TABLE users (
	idUsers int auto_increment primary key,
    name_user varchar(30) not null
    );