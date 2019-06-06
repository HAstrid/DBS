select ename from employee where designation = 'Manager' and doj> (select doj from employee where ename='Aditi') or doj< (select doj from employee where ename='Anand'); 

select distinct(e.dept_id) from employee e,department d where d.dept_id=e.dept_id;
 
 