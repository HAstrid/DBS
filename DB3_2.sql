delete from affiliated_with where phid='5';
 
 select * from affiliated_with;
 
 select * from medication;
select * from Appointment;

select p.name,mname from Medication m, Patient p,physician ph, prescribe s,appointment a where
 m.code=s.code and ph.phid=s.phid and p.ptid =s.ptid and p.phid=ph.phid and p.ptid=a.ptid and ph.phid=a.phid and p.ptid != all(select ptid from appointment);