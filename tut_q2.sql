select ssn,ename,salary,d.did,dname,deptloc from Employee e,Department d where e.did=d.did and designation in('Manager','Analyst') and 
deptloc in('Manglore','Mumbai') and year(now())- year(doj)>5 and commission =0 order by deptloc;

select * from Employee;
update Employee set Commission =0 where ssn='emp03';

select ssn,ename,designation,e.grade from Employee e,salarygrade s where s.grade=e.grade and s.grade in('C','D') and designation = 'Analyst' or 'Manager';

select * from salarygrade;

select * from department;

select ename,designation,dname,salary, (year(now())- year(doj))as Experience from Employee e,salarygrade s,department d where s.grade=e.grade and e.did=d.did and s.grade in('C','B') and dname in('Finance','Computer') 
and salary>(select salary from Employee where ename='Dave') and year(now())- year(doj)>(select year(now())- year(doj) from Employee where ename ='Angela') order by Experience;

select ename,dname,deptloc,designation from Employee e,department d where e.did=d.did and designation='Manager';

insert into employee values('emp11','Mark','Banglore','Tester',0,26000,'2015-08-05','did01','emp04','C');
insert into employee values('emp12','James','Manglore','Sales',300,24000,'2015-09-13','did01','emp04','C');

select dname from department where length(dname)=ANY(select count(ename) from employee e,department d where e.did=d.did group by dname);

