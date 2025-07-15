
-- // Use company database for filter data for employee.

USE company;

SELECT * FROM saledata;

SELECT * FROM employeedata;

ALTER TABLE company_employee_data RENAME TO employeedata;

SELECT COUNT(EEID) FROM employeedata;

SELECT full_name, Job_tittle, Department, Gender, Age, Country
FROM employeedata;

SELECT SalesMan, Item, Units, city
FROM saledata;

SELECT COUNT(SalesMan) FROM saledata;

SELECT AVG(Units) FROM Saledata;

SELECT AVG(Age) FROM employeedata;

SELECT MAX(Units) FROM saledata;

SELECT MAX(Age) FROM employeedata;

SELECT Units, Salesman, OrderDate FROM saledata WHERE Units < 55; 

SELECT full_name, Job_tittle, Department, Gender, Age
FROM employeedata WHERE Age < 35;

SELECT Salesman, OrderDate, AVG(Sale_amt)
FROM saledata
WHERE Units > 45
GROUP BY Salesman, OrderDate
HAVING AVG(Sale_amt) > 500;

SELECT EEID, Job_tittle, department, gender  
FROM employeedata
WHERE age > 35
GROUP BY EEID, Job_tittle, department, gender 
HAVING AVG(Annual_salary) > 7000;

SELECT eeid, full_name, job_tittle, department, city, country, age
FROM employeedata ORDER BY age;

SELECT AVG(age), department
FROM employeedata
GROUP BY department;

SELECT salesMan, Item, Unit_price, Sale_amt
FROM saledata ORDER BY Sale_amt;

SELECT salesMan, AVG(Item)
FROM saledata GROUP BY salesMan;

SELECT s.Manager, emp.Department FROM saledata AS s JOIN employeedata AS emp ON s.city = emp.city;

SELECT Manager FROM saledata WHERE Manager LIKE '%a';

SELECT emp.EEID, emp.full_name, emp.job_tittle, emp.age, country, s.city FROM employeedata AS emp  LEFT JOIN saledata AS s ON emp.city = s.city;  

SELECT emp.EEID, emp.full_name, emp.job_tittle, emp.age, country, s.city FROM employeedata AS emp INNER JOIN saledata AS s ON emp.city = s.city;

SELECT emp.EEID, emp.full_name, emp.job_tittle, emp.age, country, s.city FROM employeedata AS emp  RIGHT JOIN saledata AS s ON emp.city = s.city;  
  
SELECT SalesMan, Unit_price, city FROM saledata WHERE SalesMan LIKE '%n%';

SELECT SalesMan, Unit_price, city FROM saledata WHERE SalesMan LIKE 'n%';

SELECT SalesMan, Unit_price, city FROM saledata WHERE SalesMan LIKE '%n' LIMIT 10;

select ROUND(SUM(Age),2) from employeedata; 

SELECT * FROM saledata;

SELECT ROUND(SUM(Age),2) FROM saledata; 

