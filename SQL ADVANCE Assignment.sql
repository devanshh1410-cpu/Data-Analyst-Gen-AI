-- Q1. What is a Common Table Expression (CTE), and how does it improve SQL query readability?
-- A Common Table Expression (CTE) is a temporary result set defined within the execution scope of a single SELECT, INSERT, UPDATE, DELETE, or MERGE statement.
-- Readability Improvement: It improves readability by breaking down complex queries into smaller, logical building blocks.
-- Instead of using deeply nested subqueries, you can name a result set (like a variable) and reference it later in the main query, making the code easier to follow and maintain.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q2. Why are some views updatable while others are read-only? Explain with an example.
-- Views are updatable if they map directly to a single table's rows. They are read-only if they use aggregates (SUM, COUNT), grouping, or complex joins, making it impossible to track which original row to update.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q3. What advantages do stored procedures offer compared to writing raw SQL queries repeatedly?
-- Stored procedures are precompiled for faster execution, enhance security by restricting direct table access, and reduce network traffic compared to sending raw SQL text repeatedly.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q4. What is the purpose of triggers in a database? Mention one use case where a trigger is essential.
-- Triggers are scripts that automatically run in response to table events (INSERT, UPDATE, DELETE). A key use case is auditing changes (logging history) automatically.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q5. Explain the need for data modelling and normalization when designing a database.
-- Data Modelling & Normalization: Modelling provides a visual blueprint of data relationships, while normalization organizes that data to reduce redundancy (duplicates) and ensure consistency.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create database product_db;
use product_db;
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
Price DECIMAL(10,2)

);

INSERT INTO Products VALUES
(1, 'Keyboard', 'Electronics', 1200),
(2, 'Mouse', 'Electronics', 800),
(3, 'Chair', 'Furniture', 2500),
(4, 'Desk', 'Furniture', 5500);

CREATE TABLE Sales (
SaleID INT PRIMARY KEY,
ProductID INT,
Quantity INT,
SaleDate DATE,
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)

);

INSERT INTO Sales VALUES
(1, 1, 4, '2024-01-05'),
(2, 2, 10, '2024-01-06'),
(3, 3, 2, '2024-01-10'),
(4, 4, 1, '2024-01-11');
----------------------------------------------------------------------------------------------------------------
-- Q6. CTE for Revenue
WITH ProductRevenue AS (
    SELECT 
        p.ProductName, 
        (p.Price * s.Quantity) AS TotalRevenue
    FROM Products p
    JOIN Sales s ON p.ProductID = s.ProductID
)
SELECT * FROM ProductRevenue 
WHERE TotalRevenue > 3000;
--------------------------------------------------------------------------------------------------------------
-- Q7. View for Category Summary
CREATE VIEW vw_CategorySummary AS
SELECT 
    Category, 
    COUNT(ProductID) AS TotalProducts, 
    AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category;
-----------------------------------------------------------------------------------------------------------------
-- Q8. Create an updatable view containing ProductID, ProductName, and Price.
-- Step 1: Create the updatable view
CREATE VIEW vw_ProductDetails AS
SELECT ProductID, ProductName, Price
FROM Products;

-- Step 2: Update the price using the view
UPDATE vw_ProductDetails
SET Price = 1500  -- Example new price
WHERE ProductID = 1;
-----------------------------------------------------------------------------------------------------------------
-- Q9. Create a stored procedure that accepts a category name and returns all products belonging to that category.

DELIMITER //

CREATE PROCEDURE GetProductsByCategory(IN categoryInput VARCHAR(50))
BEGIN
    SELECT * FROM Products 
    WHERE Category = categoryInput;
END 

DELIMITER ;
------------------------------------------------------------------------------------------------------------------
-- Q10 Create an AFTER DELETE trigger on the table that archives deleted product rows into a new
-- table . The archive should store ProductID, ProductName, Category, Price, and DeletedAt timestamp.

-- Prerequisite: Create the archive table first
CREATE TABLE ProductArchive (
    ArchiveID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    DeletedAt DATETIME
);

-- The Trigger
DELIMITER //

CREATE TRIGGER trg_AfterDeleteProduct
AFTER DELETE ON Products
FOR EACH ROW
BEGIN
    INSERT INTO ProductArchive (ProductID, ProductName, Category, Price, DeletedAt)
    VALUES (OLD.ProductID, OLD.ProductName, OLD.Category, OLD.Price, NOW());
END //

DELIMITER ;
