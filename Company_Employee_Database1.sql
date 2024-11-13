  -- <--- Here starts our data utilization on X company's employee data. --->

-- <--- SQL queries and commands were used to filter the data at every stage --->

-- <-- First step 1 - Select data base from company. -->

SELECT * FROM company_employee_data;

-- <-- Second step 2 - select all particuler data collection from different column one by one -->

 
SELECT EEID FROM company_employee_data;          -- [ EMPOLYEE ID]

SELECT FULL_NAME FROM company_employee_data;        -- [ EMPLOYEE NAME]

SELECT JOB_TITTLE FROM company_employee_data;         --  [ EMPLOYEE JOB TITTLE]

SELECT DEPARTMENT FROM company_employee_data;            --  [ EMPOLYEE DEPARTMENT]

SELECT BUSINESS_UNIT FROM company_employee_data;             -- [EMPOLYEE BUSINESS UNIT]

SELECT GENDER FROM company_employee_data;                   -- [EMPOLYEE GENDER]

SELECT ETHNICITY FROM  company_employee_data;                   -- [EMPLOYEE ETHNICITY]

SELECT AGE FROM company_employee_data;                   --   [EMPLOYEE AGE]

SELECT HIRE_DATE FROM company_employee_data;                     -- [EMPLOYEE HIRE DATE]

SELECT ANNUAL_SALARY FROM company_employee_data;              --  [EMPLOYEE ANNUAL SALARY]

SELECT BONUS_PER FROM company_employee_data;                    -- [EMPLOYEE BONUS IN PERCENTAGE]

SELECT COUNTRY FROM company_employee_data;                       -- [EMPLOYEE COUNTRY]

SELECT CITY FROM company_employee_data;                             -- [EMPLOYEE CITY]

SELECT EXIT_DATE FROM company_employee_data;                        -- [EMPLOYEE EXIT DATE]


-- [Company wants only name and id of employee] !

SELECT EEID, FULL_NAME 
FROM company_employee_data; 

-- [Company wants age and salary of employee!]

SELECT AGE, ANNUAL_SALARY
FROM company_employee_data; 

-- [Company wants job tittles and department]

SELECT JOB_TITTLE, DEPARTMENT 
FROM company_employee_data; 

-- [Company wants name, hire date and exit date of employee!]

SELECT FULL_NAME, HIRE_DATE,
EXIT_DATE FROM company_employee_data; 

-- [Company wants employee name, country and thier city]

SELECT FULL_NAME, COUNTRY,
CITY FROM company_employee_data; 



-- [Company wants name of employee who come from U.S and thier city, job tittle, age]

SELECT FULL_NAME, COUNTRY, CITY, 
JOB_TITTLE, AGE FROM company_employee_data
WHERE COUNTRY = 'UNITED STATES';

-- [Company wants name of employee who's age 25 and country, job tittle, age] 

SELECT FULL_NAME, AGE,
COUNTRY, JOB_TITTLE FROM company_employee_data
WHERE AGE= 25;

-- [Company wants name of employee who's gender female and country, job tittle, age] 

SELECT FULL_NAME, AGE,
COUNTRY, JOB_TITTLE, GENDER
FROM company_employee_data
WHERE GENDER = 'MALE';  

-- [Company wants the data of employee name, age, gender, job tittle and country where country is china and age will be 25]

SELECT FULL_NAME, AGE, GENDER,
JOB_TITTLE, COUNTRY
FROM company_employee_data
WHERE AGE = 25 AND COUNTRY = 'China';

-- [Company wants those employee name, age, gender, and job tittle who age will be 50 or gender will be female]

SELECT FULL_NAME, AGE, GENDER,
JOB_TITTLE FROM company_employee_data
WHERE AGE = 50 OR GENDER = 'Female';

-- [Company wants those employee data name, gender, job tittle who age between 30 to 50 ]

SELECT FULL_NAME, GENDER,
JOB_TITTLE, AGE
FROM company_employee_data
WHERE AGE BETWEEN 30 AND 50;

-- [Company wants those employee data name, age, salary, bonus, job tittle where salary grater then 30 and bouns 2%]

SELECT FULL_NAME, AGE, JOB_TITTLE,
ANNUAL_SALARY, BONUS_PER
FROM company_employee_data
WHERE ANNUAL_SALARY > '$30000' AND BONUS_PER > '2%';

-- [Company wants those employee data name, age, salary, job tittl, country where age less then 30 and salary less then 30000]

SELECT FULL_NAME, AGE, JOB_TITTLE, 
ANNUAL_SALARY, COUNTRY
FROM company_employee_data
WHERE AGE < 30 AND ANNUAL_SALARY < '$30000';

SELECT FULL_NAME, AGE, JOB_TITTLE, 
ANNUAL_SALARY, COUNTRY
FROM company_employee_data
WHERE AGE <= 30 AND ANNUAL_SALARY <= '$30000';

-- [Company wants those employee data name, age, job tittle, country , their name should be in name by orede]

SELECT FULL_NAME, AGE, JOB_TITTLE,
COUNTRY FROM company_employee_data 
ORDER BY FULL_NAME ASC;

-- [Company wants only 5 employee data who live in china , thier full name, age, job tittle, salary , gender]
 
 SELECT COUNTRY, FULL_NAME, AGE,
 JOB_TITTLE, ANNUAL_SALARY, GENDER
 FROM company_employee_data 
 WHERE COUNTRY = 'China' AND JOB_TITTLE = 'Technical Architect'  
 ORDER BY FULL_NAME ASC
 LIMIT 5;
 
 -- [Company wants those employee data who join company between x date to x date print all information.]
 
 SELECT * FROM company_employee_data
 WHERE HIRE_DATE BETWEEN '06-2016' AND '08-2019';
 
-- [Company wants count our employee who working in this company] 

SELECT COUNT(EEID) FROM company_employee_data ;

-- [Company wants the number of deparment and name as well]

SELECT DISTINCT(DEPARTMENT)
FROM company_employee_data ;

-- [Company wants sum of bonus percentage employees from database]

 SELECT SUM(BONUS_PER)
 FROM  company_employee_data;
 
 -- [Company wants maximum salary data from employee also print their name, job tittl, gender, departemnt, country, bouns_per,age.]
 
 SELECT FULL_NAME, JOB_TITTLE, Annual_salary, GENDER, AGE, DEPARTMENT, COUNTRY, BONUS_PER 
 FROM   company_employee_data
 WHERE ANNUAL_SALARY = ( SELECT MAX(ANNUAL_SALARY)
FROM  company_employee_data);
  
  -- [Company wants minimum salary and avg salary ]
  
  SELECT  MIN(ANNUAL_SALARY),
  AVG(ANNUAL_SALARY)
  FROM  company_employee_data;
  
  -- [Company wants maximum age employee and minimum age employee and avg age employee]
  
  SELECT AVG(AGE), MAX(AGE), MIN(AGE)
  FROM company_employee_data;
  
 --  Company wants those employee data who's name start with a
 
 SELECT FULL_NAME 
 FROM company_employee_data
 WHERE FULL_NAME LIKE 'a%';
 
 -- company wants those data from database where age 25,30.39
 
 SELECT EEID, FULL_NAME, JOB_TITTLE,
 AGE, ANNUAL_SALARY
 FROM company_employee_data
 WHERE AGE IN (25, 30, 39) AND FULL_NAME LIKE 'C%'
 ORDER BY AGE ASC;
 
 -- Company wants those employee data from database where exite date is nothing as well as thier age should be under 45
 
 SELECT EEID, FULL_NAME, AGE, JOB_TITTLE,
 DEPARTMENT, ANNUAL_SALARY, EXIT_DATE
FROM company_employee_data 
WHERE  AGE < 45 AND EXIT_DATE IS NULL
ORDER BY AGE ASC;

-- Company wants see the data of those department who avg salary 

SELECT DEPARTMENT,  AVG (ANNUAL_SALARY) 
FROM company_employee_data
GROUP BY DEPARTMENT
HAVING AVG (ANNUAL_SALARY) < '$30000';

-- Company need all once again from database where age should be less then 50 

SELECT * FROM company_employee_data
WHERE AGE < 50 AND CITY = 'Miami'
ORDER BY AGE ASC
LIMIT 100;

SELECT EEID, FULL_NAME, JOB_TITTLE, DEPARTMENT, 
BUSINESS_UNIT, GENDER, ETHNICITY, AGE,
HIRE_DATE, ANNUAL_SALARY, BONUS_PER,
COUNTRY, CITY FROM company_employee_data
WHERE AGE < 50 AND CITY = 'Miami' 
AND FULL_NAME LIKE '%A'
ORDER BY AGE ASC
LIMIT 100;

-- All company data should be handle carefully by SQL query and filter them again and again 
