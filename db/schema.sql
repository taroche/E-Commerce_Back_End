-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL, --how to validate if the value is a decimal
    stock INT NOT NULL, --how to set default value to 10 and validate
    PRIMARY KEY(id)
    FOREIGN KEY (category_id) REFERENCES Category(id)
        ON DELETE CASCADE
);