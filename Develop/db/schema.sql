-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

use ecommerce_db;

CREATE TABLE Category(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL
);

CREATE TABLE Product(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(30) NOT NULL,
  price DECIMAL(5,2) NOT NULL ,
  stock INT NOT NULL,
  category_id INT,
  FOREIGN KEY (category_id)
  REFERENCES Category(id)
  ON DELETE SET NULL
);

CREATE TABLE Tag(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30)
);


CREATE TABLE ProductTag(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id)
    REFERENCES Product(id)
    ON DELETE SET NULL,
    FOREIGN KEY (tag_id)
    REFERENCES Tag(id)
    ON DELETE SET NULL
)


-- Category -> Product -> One-to-Many
-- Product -> Tag -> Many-to-Many

