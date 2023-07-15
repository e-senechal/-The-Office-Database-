--Find names of all employees who've sold over $30,000 to a single client
SELECT employee.first_name, employee.last_name FROM employee WHERE employee.emp_id IN(
    SELECT works_with.emp_id 
    FROM works_with 
    WHERE works_with.total_sales > 30000
);

--Find all clients who are handled by the branch that Michael Scott manages
--assumes you know Michaels emp_id

--Find branch Michael Scott manages, returns 2
SELECT branch.branch_id FROM branch WHERE branch.mgr_id = 102;

--LIMIT 1 if Michael manages multiple branches, use IN if he only manages 1
SELECT client.client_name FROM client WHERE client.branch_id = (
    SELECT branch.branch_id 
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);
