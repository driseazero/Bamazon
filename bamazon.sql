CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products
(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  product_name VARCHAR(30) NOT NULL,
  -- Makes a boolean column called "has_pet" which cannot contain null --
  department_name VARCHAR(30) NOT NULL,
  -- Makes a sting column called "pet_name" --
  price DECIMAL(10,2) NOT NULL,
  -- Makes an numeric column called "pet_age" --
  stock_quantity INTEGER(10) NOT NULL,
  -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY(item_id)
);

INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("bread", "food", 3.00, 50);
select * from products;

INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("shampoo", "health", 5.00, 30);