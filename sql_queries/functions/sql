--Find the number of employees
SELECT COUNT(emp_id) FROM employee;

--find the number of supervisors
SELECT COUNT(super_id) FROM employee;

--Find the number of female employees born after 1970
SELECT COUNT(emp_id) FROM employee WHERE(sex = 'F' AND birth_day > '1970-01-01');

--Find the average of all employee's salaries
SELECT AVG(salary) FROM employee;

--Find the average of all male employees
SELECT AVG(salary) FROM employee WHERE(sex = 'M');

--Find the sum of all employee salaries
SELECT SUM(salary) FROM employee;

--How many males and females are there? Aggregation
SELECT COUNT(sex), sex FROM employee GROUP BY sex;

--Find the total sales of each salesman
SELECT SUM(total_sales), emp_id FROM works_with GROUP BY emp_id;

--Find the total amount each client has spent
SELECT SUM(total_sales), client_id FROM works_with GROUP BY client_id;

--Find any clients who are an LLC
SELECT * FROM client WHERE client_name LIKE '%LLC';

--Find any branch suppliers who are in the label business
SELECT * FROM branch_supplier WHERE supplier_name LIKE '%Label%';

--Find any employee born in October
SELECT * FROM employee WHERE birth_day LIKE '____-10%';

--Find any clients who are schools
SELECT * FROM client WHERE client_name LIKE '%school%';

--Find a list of employee and branch names
SELECT first_name AS Company_Name FROM employee UNION
SELECT branch_name FROM branch UNION
SELECT client_name FROM client;

SELECT client_name, client.branch_id FROM client UNION SELECT supplier_name, branch_supplier.branch_id FROM branch_supplier;

--Find all money spent or earned by the company
SELECT salary FROM employee UNION SELECT total_sales FROM works_with;

--Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

--all employees included in results, returning all rows from 'left table' = employee table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

--returning all rows from 'right table' = branch table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;
