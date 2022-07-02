
-- DATA PREPARATION

-- Deletion of empty rows and rows with the headers as values from all tables
DELETE FROM dbo.Sales_January_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_February_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_March_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_April_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_May_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_June_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_July_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_August_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_September_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_October_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_November_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';
DELETE FROM dbo.Sales_December_2019 
WHERE DATALENGTH([Order ID]) = 0  OR [Order ID] = 'Order ID';

-- Check for duplicated rows using Aggregate Function
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], COUNT(*) AS num_occurrences
FROM dbo.Sales_January_2019
GROUP BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
HAVING COUNT(*) > 1;

-- Deletion of all duplicated rows, for all months, using CTE and Window Function 
WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_January_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_February_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_March_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_April_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_May_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_June_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_July_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_August_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_September_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_October_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_November_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;

WITH cte_duplicated AS (
	SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] ,
	ROW_NUMBER() OVER(PARTITION BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address] 
				ORDER BY [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]) AS row_num
	FROM dbo.Sales_December_2019) 
DELETE FROM cte_duplicated
WHERE row_num > 1;


-- Merge 12 tables into a single source
-- Creation of full year table
CREATE TABLE Orders_Full_2019 (
	OrderID INT, 
	Product VARCHAR(50),
	Quantity_Ordered INT NOT NULL,
	Unit_Price NUMERIC (10,5) NOT NULL, 
	Order_Date DATETIME2 NOT NULL,  
	Purchase_Address VARCHAR (50) NOT NULL
	PRIMARY KEY (OrderID, Product)
);

-- Populate created table
INSERT INTO Orders_Full_2019 (OrderID , Product, Quantity_Ordered, Unit_Price, Order_Date, Purchase_Address)
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_January_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_February_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_March_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_April_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_May_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_June_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_July_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_August_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_September_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_October_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_November_2019
UNION ALL
SELECT [Order ID], [Product], [Quantity Ordered], [Price Each], [Order Date], [Purchase Address]
FROM dbo.Sales_December_2019;


--Overview of full year table data
--Number of unique values per column
SELECT 
	COUNT (DISTINCT [OrderID]) AS num_unique_orderID , 
	COUNT (DISTINCT [Product]) AS num_unique_product,
	COUNT (DISTINCT [Quantity_Ordered]) AS num_unique_quantity,
	COUNT (DISTINCT [Unit_Price]) AS num_unique_unitprice,
	COUNT (DISTINCT [Order_Date]) AS num_unique_orderdate,
	COUNT (DISTINCT [Unit_Price]) AS num_unique_price,
	COUNT (DISTINCT [Purchase_Address]) AS num_unique_address
FROM dbo.Orders_Full_2019;

-- Number of null values (as per table constraints, 0 Nulls are expected)
SELECT
	SUM(CASE WHEN [OrderID] IS NULL THEN 1 ELSE 0 END) AS num_null_orderID, 
	SUM(CASE WHEN [Product] IS NULL THEN 1 ELSE 0 END) AS num_null_product,
	SUM(CASE WHEN [Unit_Price] IS NULL THEN 1 ELSE 0 END) AS num_null_price, 
	SUM(CASE WHEN [Order_Date] IS NULL THEN 1 ELSE 0 END) AS num_null_date,
	SUM(CASE WHEN [Purchase_Address] IS NULL THEN 1 ELSE 0 END) AS num_null_address
FROM dbo.Orders_Full_2019;


-- Information available in "Order_Date" and "Purchase_Address" columns can be separated and inserted into new columns 
-- Change "Order_Date" to "Order_Date_Time"
EXEC sp_rename	'dbo.Orders_Full_2019.Order_Date', 'Order_Date_Time', 'COLUMN'

-- Adding new columns
ALTER TABLE dbo.Orders_Full_2019
ADD Street VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
	State_Name VARCHAR(50) NOT NULL,
	Post_Code VARCHAR(50) NOT NULL,
	Order_Month VARCHAR(20) NOT NULL,
	Order_Hour VARCHAR(20) NOT NULL
	Order_Date DATE(10) NOT NULL;


-- Extract street, city, state and post code from "Purchase_address" and populate respective columns
--Street
UPDATE Orders_Full_2019
SET Street = (RIGHT(LEFT (Purchase_Address, CHARINDEX(',', Purchase_Address) -1 ), LEN(LEFT (Purchase_Address, CHARINDEX(',', Purchase_Address) -1 ))-1));

-- City
UPDATE Orders_Full_2019
SET City = LEFT(RIGHT(Purchase_Address, LEN(Purchase_Address) - CHARINDEX(',', Purchase_Address)), CHARINDEX(',', RIGHT(Purchase_Address, LEN(Purchase_Address) - CHARINDEX(',', Purchase_Address)-1)));

-- State
UPDATE Orders_Full_2019
SET State_Name = LEFT(RIGHT(RIGHT(Purchase_Address, LEN(Purchase_Address) - CHARINDEX(',', Purchase_Address)), 9), 2);

-- Post Code
UPDATE Orders_Full_2019
SET Post_Code = LEFT(RIGHT(RIGHT(RIGHT(Purchase_Address, LEN(Purchase_Address) - CHARINDEX(',', Purchase_Address)), 9), 6),5);


-- Extract month, hour and date from "Order_Date_Time" and populate respective columns
-- Month (column with name instead of number)
UPDATE Orders_Full_2019
SET Order_Month = DATENAME([MONTH], Order_Date);

-- Hour
UPDATE Orders_Full_2019
SET Order_Hour = RIGHT(LEFT(Order_Date, 13),2); 

-- Order Date
UPDATE Orders_Full_2019
SET Order_Date = Order_Date_Time;


-- EXPLORATORY DATA ANALYSIS

-- What was the best month in terms of sales?
SELECT Order_Month, COUNT(Order_Month) AS Total_Sales
FROM Orders_Full_2019
GROUP BY Order_Month
ORDER BY Total_Sales DESC;

-- What city had the highest number of sales?
WITH cte_citysales_count AS(
	SELECT City, COUNT(City) AS Total_Sales
	FROM Orders_Full_2019
	GROUP BY City) 
SELECT TOP 1 City, MAX(Total_Sales) AS Max_Sales
FROM cte_citysales_count
GROUP BY City
ORDER BY Max_Sales DESC;

-- How many products did we sell in each state and respective cities?
SELECT State_Name, City, COUNT (Product) AS Total_Sales
FROM Orders_Full_2019
GROUP BY  State_Name, City
ORDER BY Total_Sales DESC;

-- On average, at what time of the day are sales the highest?
SELECT DISTINCT Order_Hour, AVG(Hourly_Sales) OVER(PARTITION BY Order_Hour) AS Hourly_Avg_Sales
FROM (
	SELECT Order_Date, Order_Hour, COUNT(Order_Hour) AS Hourly_Sales
	FROM dbo.Orders_Full_2019
	GROUP BY Order_Date, Order_Hour
	) AS DateHour_Sales
GROUP BY Order_Hour, Hourly_Sales
ORDER BY Hourly_Avg_Sales DESC;

-- What were the 10 best performing (highest number of sales) days?
SELECT TOP 10 Order_Date, Daily_Sales, AVG(Daily_Sales) OVER() AS Daily_Avg_Sales, Daily_Sales - AVG(Daily_Sales) OVER() AS Daily_Performance
FROM (
	SELECT Order_Date, COUNT(Order_Date) AS Daily_Sales
	FROM dbo.Orders_Full_2019
	GROUP BY Order_Date
	) AS Date_Sales
GROUP BY Order_Date, Daily_Sales
ORDER BY Daily_Performance DESC;

-- What were the 10 worst performing (lowest number of sales) days?
SELECT TOP 10 Order_Date, Daily_Sales, AVG(Daily_Sales) OVER() AS Daily_Avg_Sales, Daily_Sales - AVG(Daily_Sales) OVER() AS Daily_Performance
FROM (
	SELECT Order_Date, COUNT(Order_Date) AS Daily_Sales
	FROM dbo.Orders_Full_2019
	GROUP BY Order_Date
	) AS Date_Sales
GROUP BY Order_Date, Daily_Sales
ORDER BY Daily_Performance ASC;

-- What was the percentage of the total sales from each product in this year?
SELECT 
	Product,
	COUNT(Product) AS Num_Prod_Sold, 
	SUM(Count(*)) OVER() AS Total_Prod_Sold, 
	CONCAT(CAST(COUNT(Product)*100.0/SUM(Count(*)) OVER() AS DECIMAL (5,3)), '%')  AS Perct_Prod_Sold
FROM dbo.Orders_Full_2019
GROUP BY Product
ORDER BY Num_Prod_Sold DESC;

-- What was the percentage of the total revenue from each product in this year?
SELECT 
	Product,
	COUNT(Product) AS Num_Prod_Sold,
	CAST(Unit_Price AS DECIMAL (6,2)) AS Unit_Price, 
	CAST(Unit_Price AS DECIMAL (6,2)) * COUNT(Product) AS Product_Revenue,
	SUM(CAST(Unit_Price AS DECIMAL (6,2)) * COUNT(Product)) OVER() AS Total_Revenue,
	CONCAT(CAST((Unit_Price * COUNT(Product)) * 100/ SUM(Unit_Price * COUNT(Product)) OVER() AS DECIMAL (4,2)), '%')  AS Perct_Revenue
FROM dbo.Orders_Full_2019
GROUP BY Product, Unit_Price
ORDER BY Product_Revenue DESC;

-- How many times were products sold together?
SELECT o1.Product AS First_Product, o2.Product Second_Product, COUNT(*) AS Times_Sold_Together
FROM dbo.Orders_Full_2019 o1 INNER JOIN dbo.Orders_Full_2019 o2 ON o1.OrderID = o2.OrderID
WHERE o1.Product < o2.Product
GROUP BY o1.Product, o2.Product
ORDER BY Times_Sold_Together DESC;