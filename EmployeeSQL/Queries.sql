-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employees.emp_no, last_name, first_name, sex, salary
From employees
Join salaries
on employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date
From employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

Select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
From department_manager
join departments
on department_manager.dept_no = departments.dept_no
join employees
on department_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
join department_employee
on employees.emp_no = department_employee.emp_no
join departments
on department_employee.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex
From employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
join department_employee
on employees.emp_no = department_employee.emp_no
join departments
on department_employee.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
join department_employee
on employees.emp_no = department_employee.emp_no
join departments
on department_employee.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select last_name, count(last_name)
From employees
group by last_name
order by count(last_name) desc;