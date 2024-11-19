Create Database `blinkitgrocery`
Use `blinkitgrocery` ;

select * from `blinkit grocery data`;

select sum(`Sales`) from  `blinkit grocery data`;
select avg(`Sales`) from  `blinkit grocery data`;
select avg(`Rating`) from  `blinkit grocery data`;
select count(`Item Identifier`) from `blinkit grocery data`;


-- Which item type is maximum sell --
SELECT 
    SUM(`Sales`) AS Total_sales, `Item Type`
FROM
    `blinkit grocery data`
GROUP BY `Item Type`
ORDER BY Total_sales DESC;


SELECT 
    SUM(`Sales`), `Item Fat Content`, `Outlet Location Type`
FROM
    `blinkit grocery data`
GROUP BY `Item Fat Content` , `Outlet Location Type`
ORDER BY SUM(`Sales`) DESC;



SELECT 
    SUM(`Sales`), `Item Fat Content`
FROM
    `blinkit grocery data`
GROUP BY `Item Fat Content`


-- Which oulet size has maximum sales --
SELECT 
    SUM(`Sales`), `Outlet Size`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Size` order by SUM(`Sales`) desc;


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


SELECT 
    SUM(`Sales`), `Outlet Location Type`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Location Type`
ORDER BY SUM(`Sales`) DESC;


SELECT 
    SUM(`Sales`), `Outlet Establishment Year`
FROM
    `blinkit grocery data`
GROUP BY `Outlet Establishment Year`
ORDER BY SUM(`Sales`) asc;


SELECT 
    SUM(`Sales`), `Item Type`, `Item Fat Content`
FROM
    `blinkit grocery data`
GROUP BY `Item Type` , `Item Fat Content`
ORDER BY SUM(`Sales`) DESC;





