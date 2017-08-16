create database bamazon;

use bamazon;

CREATE TABLE products (
item_id INTEGER(10) NOT NULL,
product_name VARCHAR(30) NOT NULL,
department_name VARCHAR(30) NOT NULL,
price INTEGER(100) NOT NULL,
stock_quantity INTEGER(100) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
		(5,"couch", "furniture", 100, 25);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (4,"chair", "furniture", 50, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (3,"mug", "kitchen", 12, 60);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (2,"desk", "furniture", 100, 20);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (1,"coffee table", "furniture", 100, 70);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (6,"blue couch", "furniture", 100, 80);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (7,"pink chair", "furniture", 80, 12);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (8,"wooden basket", "furniture", 75, 20);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (9,"coffee mug", "kitchen", 10, 76);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
	VALUES
        (10,"tea cup", "kitchen", 20, 20);