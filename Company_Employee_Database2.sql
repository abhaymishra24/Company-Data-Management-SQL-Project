-- Company wants new Data filter imfomation about company employees 

SELECT * FROM company.company_employee_data;

SELECT FULL_NAME 
FROM company.company_employee_data
WHERE  EEID IN
(SELECT DEPARTMENT AS id 
FROM company.company_employee_data
GROUP BY  Department
HAVING COUNT(*) >=5
);

SELECT FULL_NAME, AGE, JOB_TITTLE, 
ANNUAL_SALARY, COUNTRY
FROM company_employee_data
WHERE AGE < 30 AND ANNUAL_SALARY < '$30000';

SELECT FULL_NAME, AGE, JOB_TITTLE, 
ANNUAL_SALARY, COUNTRY
FROM company_employee_data
WHERE AGE <= 30 AND ANNUAL_SALARY <= '$30000';

# Company wants employees name, age, job tittle from database where salary less then $20000

SELECT FULL_NAME, AGE, JOB_TITTLE, ANNUAL_SALARY
FROM  company.company_employee_data
WHERE ANNUAL_SALARY > '$20000';

# company wants those employees name and job tittle who gender is male and department is IT

SELECT FULL_NAME, JOB_TITTLE, GENDER, DEPARTMENT
FROM company.company_employee_data
WHERE DEPARTMENT = 'IT' AND GENDER = 'MALE'
ORDER BY FULL_NAME ASC
LIMIT 20;

# company wants those emplyees name, job_tittle, department, business, salary , hire date, country where job_tittle start by Analyst age > 40

SELECT FULL_NAME, JOB_TITTLE, DEPARTMENT, BUSINESS_UNIT,
ANNUAL_SALARY, HIRE_DATE, AGE FROM company.company_employee_data
WHERE JOB_TITTLE LIKE '%Analyst%' AND AGE < 40 
ORDER BY FULL_NAME ASC
LIMIT 20;

SELECT JOB_TITTLE FROM company.company_employee_data;

# company wants name , gender business unit and salary, bonus of those employees who business unit is sale and gender is female

SELECT FULL_NAME, GENDER, BUSINESS_UNIT, ANNUAL_SALARY, BONUS_PER
FROM company.company_employee_data 
WHERE BUSINESS_UNIT LIKE '%S%' AND GENDER= 'Female'
ORDER BY FULL_NAME ASC
LIMIT 10;

SELECT BUSINESS_UNIT FROM company.company_employee_data;


# company wants name , gender business unit and salary, bonus of those employees
# who business unit is research and development or spaciality products and gender is male

SELECT FULL_NAME, GENDER, BUSINESS_UNIT, ANNUAL_SALARY, BONUS_PER
FROM company.company_employee_data 
WHERE BUSINESS_UNIT = 'Research & Development' OR 'spaciality products' AND GENDER= 'Male'
ORDER BY FULL_NAME ASC
LIMIT 10;

SELECT BUSINESS_UNIT FROM company.company_employee_data;

# company wants name, gender, job tittle and ager also country for thos employee who country name is china and age less 35 

SELECT FULL_NAME, GENDER, JOB_TITTLE, AGE,
COUNTRY FROM company.company_employee_data
WHERE COUNTRY = 'CHINA' AND AGE < 35
ORDER BY FULL_NAME ASC;

SELECT COUNTRY FROM company.company_employee_data;

# company wants count the county name that how many counteris people working in this company

SELECT DISTINCT COUNTRY, COUNT(COUNTRY)
FROM company.company_employee_data
GROUP BY COUNTRY;

SELECT DISTINCT COUNTRY FROM company.company_employee_data;

# company wants those employee name, age , gender, job tittle , country, hire date where country name is brazil and age less 30 and gender is male

SELECT FULL_NAME, AGE, GENDER, JOB_TITTLE,
COUNTRY, HIRE_DATE FROM company.company_employee_data 
WHERE COUNTRY = 'BRAZIL' AND AGE < 30 AND GENDER = 'MALE'
ORDER BY FULL_NAME, JOB_TITTLE ASC; 

SELECT * FROM company.company_employee_data
WHERE COUNTRY = 'BRAZIL'
ORDER BY FULL_NAME ASC ;


# Company get all data from company database about their employess by using SQL query.
# We can get much more and much faster all data from database using SQL query. 
