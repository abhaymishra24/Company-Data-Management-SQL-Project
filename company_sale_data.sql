
USE COMPANY;

-- SELECT * FROM employeedata;

SELECT * FROM saledata;

SELECT city FROM saledata;

select region, manager, salesman, item from saledata;

select unit_price, sale_amt from saledata;

select units, city from saledata;

select orderdate, manager, item, units, city from saledata;

select orderdate, region, manager, avg(unit_price) as avg_price
from saledata
group by orderdate, region, manager;

select orderdate, region, manager, unit_price
from saledata
group by orderdate, region, manager, unit_price;

select region, manager, unit_price from saledata;

select region, manager, unit_price, units from saledata where units < 45;





 

