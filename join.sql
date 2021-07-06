SELECT * from customers inner join orders on customers.cust_id=orders.cust_id;
select * from customers left join orders on customers.cust_id=orders.cust_id;
select * from orders right outer join customers on customers.cust_id=orders.cust_id;











select * from employee inner join department on employee.emp_id=department.emp_id;
select employee.email,employee.gender,department.dept_loc from employee left join department on employee.emp_id=department.emp_id;
select department.dept_id,department.dept_name from employee right join department on employee.emp_id=department.emp_id;
