
-- Here we filter the sale data of compnay .
-- In this sale data , we filter many crosspondence services data.

SELECT * FROM COMPANY.SALEDATA;

-- here we filter region , manager, sales man -

SELECT REGION, MANAGER, SALESMAN 
FROM COMPANY.SALEDATA;

-- here we filter data of item, unit and unit price-

SELECT ITEM, UNITS, UNIT_PRICE
FROM COMPANY.SALEDATA;

-- here we filter data of data and sele ammount -

SELECT ORDERDATE, SALE_AMT
FROM COMPANY.SALEDATA;

-- here we filter data of number of region - 

SELECT COUNT(distinct (REGION))
FROM COMPANY.SALEDATA;

-- here we filter data of  number of manager - 

SELECT COUNT(distinct(MANAGER)) FROM COMPANY.SALEDATA;

-- here we filter tha data of total unit

SELECT COUNT(UNITS)  
FROM COMPANY.SALEDATA;

-- here we filter data of total number of items
SELECT COUNT(ITEM)  
FROM COMPANY.SALEDATA;

-- here we filter data of total sum of units 

SELECT SUM(UNITS) FROM COMPANY.SALEDATA;

-- here we filter data of item which order date 1-6-18 to 5-5-18 

SELECT ITEM FROM COMPANY.SALEDATA
WHERE OrderDate BETWEEN '1-6-18' AND '5-5-18';

-- here we filter the data of item where unit greter then 60 

SELECT distinct ITEM FROM COMPANY.SALEDATA
WHERE UNITS > '60' ;

-- here we filter the data of those item where unit price greater then 1500 

SELECT DISTINCT ITEM FROM COMPANY.SALEDATA
WHERE UNIT_PRICE < '1500';

-- here we filter the data that any column is not or not

SELECT * FROM COMPANY.SALEDATA
WHERE ORDERDATE IS NULL;

-- here we change the colunm name 

SELECT unit_price AS "UNITPRICE", sale_amt AS "SALEAMT" 
FROM COMPANY.SALEDATA;

SELECT * FROM COMPANY.SALEDATA;

-- here we filter the the unit section by assending order

SELECT UNITS FROM COMPANY.SALEDATA 
ORDER BY UNITS ASC;

SELECT UNITS FROM COMPANY.SALEDATA 
ORDER BY UNITS DESC;

-- here we filter the price in asc and desc order 

SELECT UNIT_PRICE FROM COMPANY.SALEDATA 
ORDER BY UNIT_PRICE DESC;

SELECT UNIT_PRICE FROM COMPANY.SALEDATA 
ORDER BY UNIT_PRICE ASC;

-- here we filter the data of ITEM man avg unit sales-

SELECT ITEM, AVG(UNITS) FROM COMPANY.SALEDATA
GROUP BY ITEM;

SELECT SALESMAN, AVG(UNITS) FROM COMPANY.SALEDATA
GROUP BY SALESMAN;

SELECT AVG(UNITS), MANAGER
FROM COMPANY.SALEDATA GROUP BY MANAGER;

-- here we find maximum price of sale ammount -

SELECT MIN(SALE_AMT) FROM COMPANY.SALEDATA;

SELECT ORDERDATE, MANAGER, REGION , 
SALESMAN, ITEM FROM COMPANY.SALEDATA 
WHERE ORDERDATE BETWEEN '1-5-18' AND '2-7-18';

SELECT ORDERDATE, MANAGER, REGION
FROM COMPANY.SALEDATA WHERE 
REGION IN ('East','West');

SELECT SALESMAN , ITEM, REGION
FROM COMPANY.SALEDATA WHERE 
REGION = 'West';

SELECT ORDERDATE, REGION, SALESMAN, ITEM,
UNITS, UNIT_PRICE FROM COMPANY.SALEDATA 
WHERE UNIT_PRICE < 500;