select * from Movies where yor<1998;

select d.fname,d.lname from Director d,Actor a,Direct c,Act ac,Movies m where d.did=c.did and a.aid=ac.aid and m.mid=c.mid and ac.mid=m.mid and
a.fname=d.fname and title="Eyes Wide Shut";

select name,title from Reviewer r,Movies m,Review s where r.rid=s.rid and m.mid=s.mid and r.rid=
any(select r.rid from Review s,Reviewer r where s.rid=r.rid group by r.rid having count(s.rid)>1);

select name,title from Reviewer r,Movies m,Review s where r.rid=s.rid and m.mid=s.mid and r.rid=
any(select rid from Review group by rid having count(rid)>1);

select name,title from Reviewer r,Movies m,Review s where r.rid=s.rid and m.mid=s.mid group by r.rid having count(s.rid)>1;

select distinct(yor),rate from Movies m,Review r where r.mid=m.mid and rate>3 order by yor;

select fname from Actor a join Act c on a.aid=c.aid join Movies m on m.mid=c.mid and a.aid= (select aid  from Act a,Movies m where 
a.mid=m.mid and yor <1990) and a.aid =any(select aid from Act a, Movies m where a.mid=m.mid and yor>2000);

select a.fname,m.title,m.yor from Act at join Actor a on a.aid=at.aid join Movies m on at.mid=m.mid
  where yor not between 1990 and 2000;
  
  select * from Movies;
  select * from Actor;
  select * from Act;
  
  select fname from Actor a join Act c on a.aid=c.aid join Movies m on m.mid=c.mid and a.aid=(select aid from Act a,Movies m where 
  a.mid=m.mid and yor<1990) and a.aid=any(select aid from Act a,Movies m where a.mid=m.mid and yor>2000);
  
  select type,count(m.mid),avg(duration) from Movies m join BelongsTo b on m.mid=b.mid join Genre g on g.gid=b.gid group by g.gid;
  