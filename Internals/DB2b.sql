insert into Movies values('m101','Eyes Wide Shut','1996',130);
insert into Movies values('m102','Silver Line','1988',120);
insert into Movies values('m103','Up','2005',110);
insert into Movies values('m104','I Robot','2012',140);
insert into Movies values('m105','The GodFather','1990',120);
insert into Movies values('m106','Matrix','1998',120);
insert into Movies values('m107','Speed','1997',110);
insert into Movies values('m108','YJHD','2013',130);
insert into Movies values('m109','ZNMD','2010',120);
insert into Movies values('m110','Ocean 8','1994',125);

insert into Director values('d101','James','Gunn','Male');
insert into Director values('d102','Zoya','Aktar','Female');
insert into Director values('d103','Steve','Spil','Male');
insert into Director values('d104','Olivia','Munn','Female');
insert into Director values('d105','Ellen','Gen','Female');

insert into Actor values('a101','James','Gunn','Male');
insert into Actor values('a102','Anna','Sue','Female');
insert into Actor values('a103','Chris','Evans','Male');
insert into Actor values('a104','Scarlet','Joe','Female');
insert into Actor values('a105','Merly','Steep','Female');
insert into Actor values('a106','Robert','Downey','Male');

insert into Reviewer values('r101','Andrew');
insert into Reviewer values('r102','Chan');
insert into Reviewer values('r103','Sana');
insert into Reviewer values('r104','Angeli');
insert into Reviewer values('r105','Tom');

insert into Genre values('g101','Sci-fi');
insert into Genre values('g102','Thriller');
insert into Genre values('g103','Horror');
insert into Genre values('g104','Comedy');
insert into Genre values('g105','Rom-com');


insert into Direct values('d101','m101');
insert into Direct values('d101','m103');
insert into Direct values('d102','m105');
insert into Direct values('d103','m106');
insert into Direct values('d104','m107');
insert into Direct values('d105','m108');

insert into Act values('a101','m101');
insert into Act values('a102','m102');
insert into Act values('a102','m104');
insert into Act values('a103','m103');
insert into Act values('a105','m105');
insert into Act values('a105','m107');
insert into Act values('a104','m107');

insert into Review values('r101','m101',4,15);
insert into Review values('r101','m105',4,10);
insert into Review values('r101','m108',4,8);
insert into Review values('r102','m102',3,14);
insert into Review values('r102','m104',3,12);
insert into Review values('r103','m102',3,10);
insert into Review values('r104','m101',2,13);

insert into BelongsTo values('g101','m101');
insert into BelongsTo values('g101','m106');
insert into BelongsTo values('g102','m102');
insert into BelongsTo values('g103','m110');
insert into BelongsTo values('g104','m103');
insert into BelongsTo values('g105','m109');
insert into BelongsTo values('g105','m108');

