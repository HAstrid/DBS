create table Physician(phid varchar(5) primary key,name varchar(20) not null,contact_no bigint,position varchar(20));

create table Patient(ptid varchar(5) primary key,name varchar(20) not null,contact_no bigint,phid varchar(5), constraint fk_ph foreign key(phid) references Physician(phid) on delete cascade on update cascade);

create table Department(deptid varchar(5) primary key,deptname varchar(20) not null,phid varchar(5), constraint fk_ph1 foreign key(phid) references Physician(phid) on delete cascade on update cascade);

create table Medication(code varchar(5) primary key,mname varchar(20) not null,brand varchar(20),descr varchar(20),cost int);

create table Block(block_floor int,block_code varchar(5),primary key(block_floor,block_code));

create table Room(rid varchar(5) primary key,type varchar(10),avail boolean,block_floor int,block_code varchar(5),constraint fk_bk foreign key(block_floor,block_code) references Block(block_floor,block_code) on delete cascade on update cascade);

create table Admission(admid varchar(5) primary key,sdate datetime,edate datetime,rid varchar(5),ptid varchar(5),constraint fk_rm foreign key(rid) references Room(rid) on delete cascade on update cascade,constraint fk_pt foreign key(ptid) references Patient(ptid) on delete cascade on update cascade);

create table Nurse(nid varchar(5) primary key,name varchar(20) not null,position varchar(20),registered boolean);

create table Appointment(aptid varchar(5) primary key, sdate timestamp,edate timestamp,phid varchar(5),ptid varchar(5),nid varchar(5),
examination varchar(20),constraint fk_ph2 foreign key(phid) references Physician(phid) on delete cascade on update cascade,
constraint fk_pt1 foreign key(ptid) references Patient(ptid) on delete cascade on update cascade,
constraint fk_ns foreign key(nid) references Nurse(nid) on delete cascade on update cascade);

create table Procedures(proid varchar(5) primary key,name varchar(10) not null,cost int);

create table Prescribe(phid varchar(5),ptid varchar(5),code varchar(5),dose varchar(10),constraint fk_ph3 foreign key(phid)
references Physician(phid) on delete cascade on update cascade,
constraint fk_pt2 foreign key(ptid) references Patient(ptid) on delete cascade on update cascade,
constraint fk_cd foreign key(code) references Medication(code) on delete cascade on update cascade);

create table Affiliated_with(phid varchar(5),deptid varchar(5),prilim_affil boolean,constraint fk_ph4 foreign key(phid)
references Physician(phid) on delete cascade on update cascade,constraint fk_dt foreign key(deptid)
references department(deptid) on delete cascade on update cascade);

create table Attends_on_call(nid varchar(5),block_floor int,block_code varchar(5),stime time,etime time,
constraint fk_ns1 foreign key(nid) references Nurse(nid) on delete cascade on update cascade,constraint fk_bk1 foreign key(block_floor,block_code) 
references Block(block_floor,block_code) on delete cascade on update cascade);

create table Trained_with(phid varchar(5),proid varchar(5),cer_sdate date,cer_edate date,constraint fk_ph5 foreign key(phid)
references Physician(phid) on delete cascade on update cascade,constraint fk_pr foreign key(proid)
references Procedures(proid) on delete cascade on update cascade);

create table Undergoes(admid varchar(5),ptid varchar(5),proid varchar(5),phid varchar(5),nid varchar(5),pdate date,
constraint fk_ad foreign key(admid) references Admission(admid) on delete cascade on update cascade,
constraint fk_pt3 foreign key(ptid) references Patient(ptid) on delete cascade on update cascade,
constraint fk_pr1 foreign key(proid) references Procedures(proid) on delete cascade on update cascade,
constraint fk_ph6 foreign key(phid) references Physician(phid) on delete cascade on update cascade,
constraint fk_ns2 foreign key(nid) references Nurse(nid) on delete cascade on update cascade);