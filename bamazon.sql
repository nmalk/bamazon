DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(30) NOT NULL,
department_name VARCHAR(30) NOT NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("tv", "electronics", 379.89, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("tablet", "electronics", 79.50, 8);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("steam iron", "appliances", 99.87, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("tea pot", "appliances", 59.89, 32);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("monopoly", "games", 19.89, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("uno", "games", 9.29, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("harry potter set", "books", 44.49, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("greek mythology", "books", 10.89, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("children's dictionary", "books", 19.79, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("the wizard of oz", "books", 12.89, 2);

SELECT * FROM products;