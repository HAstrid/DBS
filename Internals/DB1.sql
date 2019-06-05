create table Employee(ssn varchar(5) primary key,ename char(20) not null,address char(25),doj date, designation char(20),salary int,sgrade varchar(2),
constraint fk_1 foreign key(sgrade) references Salary_grade(sgrade) on delete cascade on update cascade,
dept_id varchar(5),constraint fk_2 foreign key(dept_id) references department(dept_id) on delete cascade on update cascade,sid varchar(5),
constraint fk_3 foreign key(sid) references employee(ssn) on delete cascade on update cascade);

create table Salary_grade(sgrade varchar(2) primary key,Max_sal int,Min_sal int);

create table Department(dept_id varchar(5) primary key,dept_name varchar(10) not null,location char(20));

alter table employee add commission int; 

desc department;
desc employee;
desc Salary_grade;

insert into Salary_grade values('A',70000,55000);
insert into Salary_grade values('B',54000,40000);
insert into Salary_grade values('C',39000,29000);
insert into Salary_grade values('D',28000,18000);

insert into Department values('dt101','Finance','Banglore');
insert into Department values('dt102','Accounts','Manglore');
insert into Department values('dt103','Maths','Mumbai');
insert into Department values('dt104','Economics','Delhi');
insert into Department values('dt105','Physics','Chennai');

insert into Employee values('ssn01','Anand','Banglore','2014-01-10','CEO',69000,'A','dt101',NULL,1000);
insert into Employee values('ssn02','Suresh','Banglore','2014-05-10','Manager',54000,'B','dt101','ssn01',800);
insert into Employee values('ssn03','Ramesh','Mumbai','2014-06-10','Manager',53000,'B','dt103','ssn01',800);
insert into Employee values('ssn04','Aditi','Delhi','2014-04-10','Manager',50000,'B','dt104','ssn01',800);
insert into Employee values('ssn05','Priya','Banglore','2014-08-10','Analyst',48000,'B','dt101','ssn02',500);
insert into Employee values('ssn06','Roopa','Manglore','2014-09-10','Analyst',47000,'B','dt102','ssn03',500);
insert into Employee values('ssn07','Rama','Manglore','2015-02-10','Devo',30000,'C','dt102','ssn03',0);
insert into Employee values('ssn08','Amulya','Banglore','2015-03-10','Devo',30000,'C','dt101','ssn02',0);
insert into Employee values('ssn09','Saket','Mumbai','2015-04-10','Analyst',48000,'A','dt103','ssn03',500);
insert into Employee values('ssn10','Sowmya','Delhi','2015-04-10','Tester',39000,'C','dt104','ssn04',0);


