create table Movies(mid varchar(5) primary key,title char(15) not null,yor year,duration int);

create table Director(did varchar(5) primary key,fname char(10),lname char(10),gender char(6));

create table Actor(aid varchar(5) primary key,fname char(10),lname char(10),gender char(6));

create table Reviewer(rid varchar(5) primary key,name char(15));

create table genre(gid varchar(5) primary key,type char(10));

create table Direct(did varchar(5),mid varchar(5),constraint fk_did1 foreign key(did) references Director(did),
constraint fk_mid1 foreign key(mid) references Movies(mid));

create table Act(aid varchar(5),mid varchar(5),constraint fk_aid1 foreign key(aid) references Actor(aid),
constraint fk_mid2 foreign key(mid) references Movies(mid));

alter table Act add(role char(10));

create table Review(rid varchar(5),mid varchar(5),constraint fk_rid1 foreign key(rid) references Reviewer(rid),
constraint fk_mid3 foreign key(mid) references Movies(mid));

alter table Review add (rate int(2),NoOfRate int(2));

create table BelongsTo(gid varchar(5),mid varchar(5),constraint fk_gid1 foreign key(gid) references Genre(gid),
constraint fk_mid4 foreign key(mid) references Movies(mid));
