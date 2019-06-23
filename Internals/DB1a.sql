select ename,salary, concat("$",salary*.25) as Salary_D from Employee ;

select avg(salary) as Average_salary ,designation from employee where designation='Analyst';

select ssn,ename from Employee e,department d where e.dept_id=d.dept_id and dept_name!= 'Finance';
 
 a)
 select ename,salary,commission,(commission+salary)as Net_sal from employee where (commission+salary) > Any(select salary from Employee);
 
 
 b)
 select ename,salary,commission,(commission+salary)as Net_sal from employee where (select max(commission+salary) >= 
 any(select salary from Employee));
 
 select d.* from department d left outer join employee e on e.dept_id=d.dept_id where e.dept_id is NULL;
 
 select d.*,count(e.dept_id) from department d,employee e where e.dept_id=d.dept_id group by dept_id having count(e.dept_id)>= 
 all(select count(dept_id) from employee group by dept_id);
 
