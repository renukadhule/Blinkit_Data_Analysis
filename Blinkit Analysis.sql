Create Database `blinkitgrocery`
Use `blinkitgrocery` ;

select * from `blinkit grocery data`;

--  total sales across all items --
select sum(`Sales`) from  `blinkit grocery data`;

-- average sales per item across the entire dataset --
select avg(`Sales`) from  `blinkit grocery data`;

-- What is the average customer rating across all items --
select avg(`Rating`) from  `blinkit grocery data`;

-- How many unique items are listed in the blinkit grocery data based on the Item Identifier --
select count(`Item Identifier`) from `blinkit grocery data`;


-- Which item type is maximum sell --
SELECT 
    SUM(`Sales`) AS Total_sales, `Item Type`
FROM
    `blinkit grocery data`
GROUP BY `Item Type`
ORDER BY Total_sales DESC;

-- Which combination of Item Fat Content and Outlet Location Type generates the highest total sales? --
SELECT 
    SUM(`Sales`), `Item Fat Content`, `Outlet Location Type`
FROM
    `blinkit grocery data`
GROUP BY `Item Fat Content` , `Outlet Location Type`
ORDER BY SUM(`Sales`) DESC;


-- How do total sales vary across different Item Fat Content categories  Low Fat, Regular? --
SELECT 
    SUM(`Sales`), `Item Fat Content`
FROM
    `blinkit grocery data`
GROUP BY `Item Fat Content`


-- Which oulet size generate maximum sales --
SELECT 
    SUM(`Sales`), `Outlet Size`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Size` order by SUM(`Sales`) desc;


-- which Outlet Type has maximum highest sales,rating and Item Visibility? --
SELECT 
    SUM(`Sales`),
    AVG(`Rating`),
    AVG(`Sales`),
    COUNT(`Item Type`),
    AVG(`Item Visibility`),
    `Outlet Type`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Type`;


-- Which Outlet Location Type generates the highest total sales? --
SELECT 
    SUM(`Sales`), `Outlet Location Type`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Location Type`
ORDER BY SUM(`Sales`) DESC;


-- How does the total sales vary by Outlet Establishment Year? --
SELECT 
    SUM(`Sales`), `Outlet Establishment Year`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Establishment Year`
ORDER BY SUM(`Sales`) ASC;


-- Which combination of Item Type and Item Fat Content has the highest total sales? --
SELECT 
    SUM(`Sales`), `Item Type`, `Item Fat Content`
FROM
    `blinkit grocery data`
GROUP BY `Item Type` , `Item Fat Content`
ORDER BY SUM(`Sales`) DESC;


-- What are the top 5 Item Types by total sales, and how much do they contribute to overall sales? --
SELECT 
    SUM(`Sales`), `Item Type`
FROM
    `blinkit grocery data`
GROUP BY `Item Type` 
ORDER BY SUM(`Sales`) DESC limit 5;


-- Which outlets have the highest customer satisfaction based on their average ratings? --
SELECT 
    AVG(`Rating`), `Outlet Identifier`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Identifier`
ORDER BY AVG(`Rating`) DESC
LIMIT 3;
