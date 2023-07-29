-- Create the database for the retail store
CREATE DATABASE my_retail_store;

-- Use the newly created database
USE my_retail_store;

-- Create the Category table
CREATE TABLE Category (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(40) NOT NULL
);

-- Insert categories into the Category table
INSERT INTO Category (categoryName) VALUES
    ('Men''s Clothing'),
    ('Women''s Clothing'),
    ('Kid''s Clothing'),
    ('Accessories');

-- Create the Item table
CREATE TABLE Item (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    itemName VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    categoryID INT NOT NULL,
    brand VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    picture VARCHAR(300) NOT NULL,
    FOREIGN KEY (categoryID) REFERENCES Category(categoryID)
);

-- Insert items into the Item table
INSERT INTO Item (itemName, description, categoryID, brand, quantity, price, picture) VALUES
    ('Men''s T-Shirt', 'A comfortable and stylish t-shirt for men', 1, 'Nike', 50, 19.99, 'https://example.com/mens-tshirt.jpg'),
    ('Women''s Dress', 'Elegant dress for women', 2, 'Zara', 30, 39.99, 'https://example.com/womens-dress.jpg'),
    ('Kids'' Hoodie', 'Warm and cute hoodie for kids', 3, 'Adidas', 20, 29.99, 'https://example.com/kids-hoodie.jpg'),
    ('Sunglasses', 'Fashionable sunglasses for all', 4, 'Ray-Ban', 100, 99.99, 'https://example.com/sunglasses.jpg');

-- Create the Customer table
CREATE TABLE Customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insert customers into the Customer table
INSERT INTO Customer (firstName, lastName, email, password) VALUES
    ('John', 'Doe', 'john@example.com', 'john123'),
    ('Jane', 'Smith', 'jane@example.com', 'jane456'),
    ('Mike', 'Johnson', 'mike@example.com', 'mike789');

-- Create the ShoppingCart table
CREATE TABLE ShoppingCart (
    cartID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    itemID INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (itemID) REFERENCES Item(itemID)
);

-- Insert items into the ShoppingCart table (cart for customers)
-- You can add items to the cart as customers make selections
INSERT INTO ShoppingCart (customerID, itemID, quantity) VALUES
    (1, 1, 2),
    (2, 3, 1);

-- Create the Review table
CREATE TABLE Review (
    reviewID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    itemID INT NOT NULL,
    rating INT NOT NULL,
    comment VARCHAR(255),
    reviewDate DATE NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (itemID) REFERENCES Item(itemID)
);

-- Insert reviews into the Review table
INSERT INTO Review (customerID, itemID, rating, comment, reviewDate) VALUES
    (1, 1, 5, 'Great quality!', '2023-07-28'),
    (2, 2, 4, 'Beautiful dress!', '2023-07-27');

-- Create the PurchaseOrder table
CREATE TABLE PurchaseOrder (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    itemID INT NOT NULL,
    quantity INT NOT NULL,
    orderDate DATE NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (itemID) REFERENCES Item(itemID)
);

-- Insert purchase orders into the PurchaseOrder table
-- This table can be used to store orders when customers make purchases
INSERT INTO PurchaseOrder (customerID, itemID, quantity, orderDate) VALUES
    (1, 1, 2, '2023-07-27'),
    (2, 3, 1, '2023-07-28');
